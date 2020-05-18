all: mmake xmake

xmake: mmake
	cd xmake; docker build . -t spikeb/xmake

mmake:
	cd mmake; docker build . -t spikeb/mmake

.PHONY: mmake xmake
