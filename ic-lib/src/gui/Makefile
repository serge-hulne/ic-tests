UNAME_S := $(shell uname -s)

all: webview_binding.a

#######
# Linux
#######

ifeq ($(UNAME_S), Linux)

webview.o: webview.cc
	g++ -c webview.cc -std=c++11 -DWEBVIEW_STATIC `pkg-config --cflags gtk+-3.0 webkit2gtk-4.0` -o webview.o

webview_binding.o: webview_binding.c	
	gcc -c webview_binding.c -std=c99 

webview_binding.a: webview_binding.o webview.o
	ar rcs libwebview_binding.a webview_binding.o webview.o 
endif

#####
# Mac
#####

ifeq ($(UNAME_S), Darwin)

webview.o: webview.cc
	g++ -c webview.cc -std=c++11 -DWEBVIEW_STATIC -o webview.o

webview_binding.o: webview_binding.c	
	gcc -c webview_binding.c -std=c99 

webview_binding.a: webview_binding.o webview.o
	ar rcs libwebview_binding.a webview_binding.o webview.o 
endif

# Clean:
clean:
	-rm -rf *.so *.a *.o app *.dwarf ../../shards.lock ../../lib


###############
# Windows/MinGW
###############

# g++ -c libs/webview/webview.cc -std=c++14 -DWEBVIEW_STATIC -Ilibs/webview2/build/native/include -o build/webview.o
# gcc -c basic.c -std=c99 -Ilibs/webview -o build/basic.o
# g++ build/basic.o build/webview.o -mwindows -ladvapi32 -lole32 -lshell32 -lshlwapi -luser32 -lversion -o build/basic.exe && "build/basic.exe"
