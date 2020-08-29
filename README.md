Device tree for Android head unit based on the Alps ac8227l SoC

Have successfully built TWRP 3.4.0 (binary available in the root of this
repository) - now moving on to try and build a kernel and Android 8.1 Go.

The TWRP binary works, with some issues.   Most notably, there are some
graphical glitches on startup (they go away after a couple of seconds) and
I have not managed to get mtp or adb working in recovery mode yet.

Project is active, receiving more or less daily updates.  If you have any
info on device tree structure, kernel modules, or manually repartitioning
these devices, I'd love to hear from you!

I've pulled together a ton of information over the last couple of weeks.
I don't know for sure if I have quite enough yet to compile a kernel,
but I'm getting close.