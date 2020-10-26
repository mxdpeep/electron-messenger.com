all: build_linux build_windows

clean:
	rm -rf messenger-linux-x64
	rm -rf messenger-win32-x64

build_linux:
	nativefier -n "messenger" -a x64 --disable-context-menu --build-version 1.1 --electron-version 10.1.5 --disk-cache-size 52428800 --single-instance -p linux -i messenger.png https://messenger.com

build_windows:
	nativefier -n "messenger" -a x64 --disable-context-menu --build-version 1.1 --electron-version 10.1.5 --disk-cache-size 52428800 --single-instance -p windows -i messenger.ico https://messenger.com
