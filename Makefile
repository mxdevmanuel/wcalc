CC=g++
OUTDIR=build
MKDIR=mkdir -p

.PHONY: directory

all: directory wcalc

wcalc: $(wildcard src/*.cpp) $(wildcard src/*.h) $(wildcard src/*.hpp)
	$(CC) $^ `pkg-config --cflags --libs libqalculate wayland-client` -Wall -Wextra -g -o ${OUTDIR}/$@ 

directory: ${OUTDIR}
${OUTDIR}:
	${MKDIR} ${OUTDIR}
