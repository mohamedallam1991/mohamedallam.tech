serve:
	hugo serve -D

build:
	rm -rf public && hugo --environment production --ignoreCache
