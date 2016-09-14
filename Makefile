PROJECT_NAME = transhominid

UNAME := $(shell uname)

# OS X
ifeq ($(UNAME), Darwin)
	I7_COMPILER = ./i7.osx
	I7_EXTENSION_DIR = ~/Library/Inform/Extensions/
endif
#Linux
ifeq ($(UNAME), Linux)
	I7_COMPILER = /usr/local/bin/i7
	I7_EXTENSION_DIR = /usr/local/share/inform7/data/Extensions/
endif

# Needed because these targets are not actual files
.PHONY: clean cleanstory interpreter extensions story i7compile i7release critpathtest all
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
	find transhominid.inform/Source/ -iname '*.txt' | sort | xargs cat > transhominid.inform/Source/story.ni

.PHONY: i7compile
i7compile:
	$(I7_COMPILER) -c $(PROJECT_NAME).inform 

.PHONY: i7release
i7release:
	$(I7_COMPILER) -r $(PROJECT_NAME).inform 
	cp $(PROJECT_NAME).materials/overlay/style.css $(PROJECT_NAME).materials/Release/style.css
	cp $(PROJECT_NAME).materials/overlay/interpreter/glkote.css $(PROJECT_NAME).materials/Release/interpreter/glkote.css
	cp $(PROJECT_NAME).materials/fonts/Ubuntu-B.ttf $(PROJECT_NAME).materials/Release/
	cp $(PROJECT_NAME).materials/fonts/Ubuntu-B.ttf $(PROJECT_NAME).materials/Release/interpreter/
	cp $(PROJECT_NAME).materials/fonts/Cabin-Medium.otf $(PROJECT_NAME).materials/Release/
	cp $(PROJECT_NAME).materials/fonts/Cabin-Medium.otf $(PROJECT_NAME).materials/Release/interpreter/
	#(cd $(PROJECT_NAME).materials && python buildfont.py)
	cp -r $(PROJECT_NAME).materials /media/sf_Downloads/

critpathtest: i7compile
	py.test tests/test.py

all: interpreter extensions story i7compile i7release critpathtest

