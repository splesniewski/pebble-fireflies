PBW = build/pebble-fireflies.pbw

configure:
	pebble configure

compile:
	pebble build

install: compile
	pebble install

reinstall: compile
	pebble install

numbers:
	rm src/numbers.h
	for f in `find doc/images/numbers/ -type f -name '*.png'`; do python /Users/nmurray/programming/c/pebble/pebble-sdk-release-001/sdk/tools/bitmapgen.py header $f >> src/numbers.h ; done

glyphs:
	./bin/make-glyphs.sh

