
(
SynthDef(\karplus01, {
	|
	freq=440, amp=1, gate=1, pan=0,out=0,
	attack = 0.002,sustain=0.125,decay=0.2,release=0.5,
	harmonic=1.0,brightness=1.0,spread=0.1
	|
	var smoothFreq, vibFreq, oscL, oscR, oscC, env, noise, detune,strike;
	var maxDelay = 30.reciprocal;

	smoothFreq = Lag.kr(freq);
	vibFreq = Vibrato.kr(smoothFreq,0.5,0.01);
	detune = spread*1.midicps/2;

	noise = PinkNoise.ar(1);
	strike = Impulse.kr(2);

	oscL = Pluck.ar(noise,strike,maxDelay,(vibFreq+detune).reciprocal,100,coef:0);
	oscR = Pluck.ar(noise,strike,maxDelay,(vibFreq-detune).reciprocal,100,coef:0);
	oscC = Pluck.ar(noise,strike,maxDelay,(vibFreq/2).reciprocal,10,coef:0);

	env = EnvGen.ar(Env.adsr(attack,decay,sustain,release, 1, -4), gate, timeScale:sustain, doneAction:2);

	OffsetOut.ar(out, DirtPan.ar((oscC+ oscL).tanh/2, ~dirt.numChannels, pan-spread, env));
	OffsetOut.ar(out, DirtPan.ar((oscC+ oscR).tanh/2, ~dirt.numChannels, pan+spread, env));
}).add
)

// Synth(\karplus01);

