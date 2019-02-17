// a basic tidal compatable synth with envelope, sawtooth osc, lowpass filter
(
SynthDef(\templateSynth, {
	|
	out, freq, gate, filterHarmonic=1.5
	attack, sustain=1, decay, release,
	pan
	|
	var sig, env;
	sig = Saw.ar(freq);
	sig = LPF.ar(sig,freq*filterHarmonic);
	env = EnvGen.ar(Env.adsr(attack, decay, 1, release), gate, timeScale:sustain, doneAction:2);
	OffsetOut.ar(out, DirtPan.ar(sig/2, ~dirt.numChannels, pan, env));
}).add;
);
