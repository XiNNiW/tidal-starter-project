# How to start making music with TidalCycles

## Purpose/Overview
Think about this like a guitar lesson. I'm going to tell you about how the instrument works, how to tune it,
and how to make a few chords, and at the end you will leave with a working copy of the instrument and the ability to make sound on it.


### What is tidalcycles?
tidalcycles is an instrument for making music that is made out of code. Instead of strings, keys or reeds, it uses code to create sound.
Performers create and execute lines of code to bring their musical ideas to life. In most instruments, the idea of the music (the score, or chord chart, or memory) is separate from the music (the sound and performance). In tidal, they are unified. You express the idea to tidal and immediately hear the result. This can make tidal more accessible than other instruments and allow it to work in ways that are very different than other instruments.
Tidal was designed to be used live but it also makes a great studio tool!

### What is algorave?
Algorave is an international [community of musicians](https://algorave.com/) and the name given to live performances of music made using tools like tidal cycles.
From the [toplap](https://toplap.org/algorave/) website:
'''
Algoraves are all about dancing to algorithms, including live coding as well as other approaches to controlling and performing with generative music.
'''
Algoravers strive to be transparent exposing the inner workings of their music by projecting the code so the crowd can see it as it is developed.
Algoravers also strive to be inclusive and diverse, making a point to emphasize diverse lineups at their raves and seeking to make
the tools of livecoding available to a wide variety of people.
The full Algorave community guidelines are [here](https://github.com/Algorave/guidelines/blob/master/README_en.md)

## Installing Tidal

Installing tidal is the most complicated part of using it. We will do it all together.
Tidal is installed in 3 parts.

### The Anatomy of the Instrument

1. Supercollider and SuperDirt
 - Supercollider is a language and engine for making synthesizers and doing audio processing.
 It is the engine that makes Tidal make sound.
 - SuperDirt is software written for supercollider that converts Tidal patterns into sounds.

1. tidal
  - Tidal is the language that you use to express musical ideas in patterns. It sends data to superdirt to make sounds.
  It can also receive data from superdirt to make patterns react to the outside world. (ex. a midi controller)

1. A text editor with a plugin for tidalcycles
  - A text editor with a special plugin is required to evaluate the tidalcycles code live. This is the interface that you will use to make music with tidal.
  - Many good editors with plugins exist (Atom, VSCode, emacs, vim). We will use atom today.

### Installation Steps
We will follow along with the instructions here: [install instructions](https://tidalcycles.org/index.php/Installation)
select your operating system from the list and follow along.

When you are done, we will do a few more things together to make it easier for you to make music with tidal. The steps below will make it easy for you to use custom sounds and samples in tidal, and record midi and audio without having to edit more code.

1. Open supercollider and edit the startup file to point at tidal-startup.scd

1. Edit startup.scd to point at install directory

## Running Tidal

1. Launch supercollider

1. Launch Atom and open the tidal template project folder from the File menu.

1. Start editing a .tidal file and press control+enter on a line. For now open one of the tutorial files in the "songs" directory.