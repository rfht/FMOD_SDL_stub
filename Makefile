# Makefile for FMOD_SDL
# Written by Ethan "flibitijibibo" Lee
# modified by Thomas Frohwein

FMOD_VERSION = 10

all:
	$(CC) -O3 -Wall -pedantic -fpic -fPIC -shared -o libfmod_SDL.so FMOD_SDL.c `sdl2-config --cflags --libs`

preload:
	$(CC) -O3 -Wall -pedantic -fpic -fPIC -shared -o libfmod_SDL.so FMOD_SDL.c -DPRELOAD_MODE `sdl2-config --cflags --libs`
