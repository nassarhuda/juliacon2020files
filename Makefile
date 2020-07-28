UNAME := $(shell uname)
ifeq ($(UNAME),Linux)
	SHAREDLIB_EXT := so
	SHAREDLIB_FLAG := -shared
endif
ifeq ($(UNAME),Darwin)
	SHAREDLIB_EXT := dylib
	SHAREDLIB_FLAG := -dynamiclib
endif

CURDIR := $(shell pwd)
LIBNAME := $(CURDIR)/hello_world_lib.$(SHAREDLIB_EXT)

CFLAGS:= -g -O -c
OBJS=hello_world.o
all: hello

.PHONY: all clean

hello: hello_world.c
	gcc $(CFLAGS) hello_world.c
	gcc $(SHAREDLIB_FLAG) -o $(LIBNAME) hello_world.o
	
clean:
	$(RM) -rf $(OBJS) hello
	$(RM) -rf $(LIBNAME) hello