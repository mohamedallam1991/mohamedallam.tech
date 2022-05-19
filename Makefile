serve:
	hugo serve -D $(hugoargs)

build:
	rm -rf public && hugo --environment production --ignoreCache
