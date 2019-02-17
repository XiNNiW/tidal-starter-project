the "synths" folder is for your custom synth definitions. These are .scd files that contain a synthdef for superdirt to use.

You can access a custom synth from a pattern by referencing the name of the synthesizer in the .scd file.

(ex. d1 $ sound "phase-mod01")

You can modify the parameters of a synth using the pF functions. "harmonic" is a parameter of phase-mod01.

(ex. d1 $ sound "phase-mod01" # pF "harmonic" 0.5)

NOTE: this only works because the tidal-startup.scd file tells supercollider/superdirt where to find the synths
if you want to store your synths elsewhere or want to move your project directory,
change the following line in tidal-startup.scd:

	~dirt.loadSynthDefs("~/Music/tidal-cycles/tidal-cycles-workshop/synths/");
