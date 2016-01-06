PROJECT_NAME = transhominid

UNAME := $(shell uname)

# OS X
ifeq ($(UNAME), Darwin)
	I7_COMPILER = ./i7.osx
	I7_EXTENSION_DIR = ~/Library/Inform/Extensions/
endif

# Needed because these targets are not actual files
.PHONY: clean cleanstory interpreter extensions story i7compile critpathtest all
.DEFAULT_GOAL := all

clean: cleanstory
	(cd interpreter/glulxe && make clean)
	(cd interpreter/cheapglk && make clean)

cleanstory:
	-rm transhominid.inform/Source/story.ni
	-rm transhominid.inform/Build/output.gblorb

interpreter:
	$(MAKE) -C interpreter/cheapglk
	$(MAKE) -C interpreter/glulxe

extensions:
	rsync -r $(PROJECT_NAME).extensions/ $(I7_EXTENSION_DIR)

story: cleanstory
	-rm transhominid.inform/Source/story.ni
	find transhominid.inform/Source/ -iname '*.txt' | xargs cat > transhominid.inform/Source/story.ni

.PHONY: i7compile
i7compile:
	$(I7_COMPILER) -c $(PROJECT_NAME).inform 

critpathtest: i7compile
	py.test tests/test.py

all: interpreter extensions story i7compile critpathtest

