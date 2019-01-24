the 'samples' directory is where your custom samples go

if you have a sample or set of samples you would like to use in tidal cycles do the following:
1. create a folder in the samples folder (ex. 'wind-chimes')
2. put your samples inside that folder (make sure they are .wav files)
3. restart Supercollider

you can now use your samples in patterns (ex. d1 $ sound "wind-chimes:2")

NOTE: this only works because the tidal-startup.scd file tells supercollider/superdirt where to find the samples
if you want to store your samples elsewhere or want to move your project directory,
change the following line in tidal-startup.scd:

	~dirt.loadSoundFiles("~/Music/tidal-cycles/tidal-cycles-workshop/samples/*");
