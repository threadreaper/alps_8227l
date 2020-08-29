This is a working device tree for building TWRP for a cheap Android head unit,
with the endgame goal of porting or creating a custom ROM for the system.
Please read the entirety of this document before you clone this repo, try to build
it, or submit any pull requests.   It is far from guaranteed to be compatible with
your device.  I can not be held responsible for damage to your system or your
sanity as a result of attempting to utilize this device tree or the binary!

This tree is for units based on the abundant and inexpensive ac8227l SoC 
(System on Chip) released by Alps, and based on MediaTek hardware.  For as 
plentiful as these head units are, information/documentation is surprisingly 
hard to come by.  The stock firmware for these units often has a filename prefixed by
YT921[some digit][some letter(s)] followed by a rough version number and a
build date.  The YT921xx numbers don't necessarily seem to indicate model 
numbers, though.   To the best of my knowledge at this point, all these units
are based on the ac8227l SoC, but apart from that the hardware can vary a 
bit and that's where things begin to get tricky.   

The stock firmware on my unit was YT9216BJ_00012_V001_20200421, from an
Amazon reseller under the name of 'Binize.'  There are a couple of threads on 
xda-developers about these units, but they're light on details and heavy on 
bad information.  In the days or weeks to come, I will be doing my
best to produce a comprehensive guide to working with these units as I begin
releasing relevant code and other files as I either collect or create them.

More about the "model" numbers.   They're meaningless.  It's the hardware
on your board that matters, and the only way to really be certain of that
is to crack it open and inspect it.  My unit was originally labeled as a YT9216B
but is currently running a firmware prefixed as a YT9213C on the zip file, but 
identifies as a YT9218B in the Android settings menu.   Proceed with caution!

That being said, the most important distinction I have found between the unit
I'm developing for and any of the other ones is that my model has two DRAM
chips on the board, where most other models have only one.  This recovery
image should run for you if your board has the two DRAM chip setup and your
system runs the 3.18.22 kernel (most of them do) but I make no guarantees.

If you're just interested in getting TWRP flashed on your device, the recovery.img
that appears in the root of this repository will always be a copy of the most
recent version I have compiled that runs successfully on my device.  You can
simply download it and flash it from fastboot or SP-flashtool.  

If you want to use these device tree files, they're made to be built using the 
minimal manifest for building TWRP in Omnirom.   That repo is here:
https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni
I used a shallow clone of the repo.   Once you have pulled down the repo files,
copy the files from this repository into the /devices folder of the omnirom
source.  you should end up with a /devices/alps/8227l folder that contains
the device tree.   From there:

source ./build/envsetup.sh
lunch omni_8227l-userdebug
make recoveryimage

This all assumes you already have a working toolchain in place and everything
set up properly.  Your recovery.img file will be in /out/target/product/8227l/
if everything goes right!

The TWRP version of the binary available here is 3.4.0 and for the most part, 
is working as intended.   There are a few known issues that I'm still working on:

    abd is not currently working in TWRP.  (mtp has not been tested)
	When TWRP first starts, you may see nothing but lines and graphical
	    artifacts on screen -  don't freak out, it should load normally in a
	    couple of seconds.
   SELinux is running in permissive mode.   I think most TWRP installs
       are this way, but just be aware of what you run in this environment
	   because with SELinux disabled, there's little to stop any malware
	   from having its way with your device.
    If your touch input is flipped or inverted, you will have to build from
	   source with the appropriate BoardConfig.mk flags for your device.   

