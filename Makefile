CC = g++
INCLUDEDIRS = include
LIBNAME = calculator
LIBFILENAME = libcalculator.so
BINARY = calc
SOURCESFOLDER = src
SOURCESBINARY = main.cpp
SOURCESLIB = calculator.cpp
OBJECTSLIB = $(patsubst %.cpp,%.o,$(SOURCESLIB))

.PHONY: all

all: $(BINARY)

$(BINARY): $(SOURCESFOLDER)/$(SOURCESBINARY) lib
	$(CC) $< -o $@ -I $(foreach D,$(INCLUDEDIRS),$(D)) -l $(LIBNAME)

.PHONY: lib

lib: $(OBJECTSLIB)
	$(CC) $^ -shared -o $(LIBFILENAME)
	sudo mv $(LIBFILENAME) /usr/lib/  

$(OBJECTSLIB): $(SOURCESFOLDER)/$(SOURCESLIB)
	$(CC) $^ -c -I $(INCLUDEDIRS)

.PHONY: clean

clean:
	rm -rf $(BINARY) *.o