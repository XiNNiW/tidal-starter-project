
(
SynthDef(\pm01, {|freq=220, amp=1, gate=1, pan=0,out=0,harmonic=1.0,brightness=1.0,attack,decay,sustain,release,drive=2|
	var smoothFreq, vibFreq, blip, panner, env;

	smoothFreq = Lag.kr(freq);
	vibFreq = Vibrato.kr(smoothFreq,0.5,0.01);

	blip = PMOsc.ar(vibFreq, harmonic*(550/300)*smoothFreq, Line.ar(0,20,8)*brightness, 0, 1*drive).tanh;
	env = EnvGen.kr(Env.adsr(attack,decay,sustain,release), gate, timeScale:sustain, doneAction:2);
	OffsetOut.ar(out, DirtPan.ar(blip/2, ~dirt.numChannels, pan, env));
}).add
);

// Synth(\pm01);