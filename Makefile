PROJECT_NAME = transhominid

UNAME := $(shell uname)

# OS X
ifeq ($(UNAME), Darwin)
	I7_COMPILER = ./i7.osx
	I7_EXTENSION_DIR = ~/Library/Inform/Extensions/
endif

# Needed because these targets are not actual files
.PHONY: interpreter extensions all
.DEFAULT_GOAL := all

clean:
	(cd interpreter/glulxe && make clean)
	(cd interpreter/cheapglk && make clean)

interpreter:
	$(MAKE) -C interpreter/cheapglk
	$(MAKE) -C interpreter/glulxe

extensions:
	rsync -r $(PROJECT_NAME).extensions/ $(I7_EXTENSION_DIR)

all: interpreter extensions
	$(I7_COMPILER) -c $(PROJECT_NAME).inform

