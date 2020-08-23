This is a working device tree for building TWRP for a cheap Android head unit,
with the endgame goal of porting or creating a custom ROM for the system.
Please read the entirety of this document before you clone this repo, try to build
it, or submit any pull requests.   It is far from guaranteed to be compatible with
your device.  I can not be held responsible for damage to your system or your
sanity as a result of attempting to utilize this device tree!

This tree is for units based on the abundant and inexpensive ac8227l SoC 
(System on Chip) released by Alps, and based on MediaTek hardware.  For as 
plentiful as these head units are, information/documentation is surprisingly 
hard to come by.  I've spent most of the last week or so working on this and 
learning about the platform, and I think I may still have more questions than 
answers.  The stock firmware for these units often has a filename prefixed by
YT921[some digit][some letter(s)] followed by a rough version number and a
build date.  The YT921xx numbers don't necessarily seem to indicate model 
numbers, though.   To the best of my knowledge at this point, all these units
are based on the ac8227l SoC, but apart from that the hardware can vary a 
bit and that's where things begin to get tricky.   

The stock firmware on my unit was YT9216BJ_00012_V001_20200421, from an
Amazon reseller under the name of 'Binize.'  Before you ask, no, I do not have
a copy of this firmware.  There are a couple of threads on xda-developers 
about these units, but they're light on details and heavy on bad information.   
I wouldn't advise following any tutorials you may find there.   Before I had 
done enough research to know better, I began following the first guide I found
that was written in comprehensible English, hoping to root the device on stock
firmware and have a starting point for making modifications.   Step one in the
guide provided a link to download SP Flash Tool, along with a scatter file and 
a preloader, and instructions on how to flash the preloader.   This was a really
stupid thing to do and is how I ended up losing my stock firmware.  If you have
one of these units, DON'T EVER FLASH YOUR PRELOADER unless you are fully
aware of the reason why you are doing it, fully understand what the preloader
is and what it does, etc, etc.   In the days or weeks to come, I will be doing my
best to produce a comprehensive guide to working with these units as I begin
releasing relevant code and other files as I either collect or create them.

More about the "model" numbers.  The "BJ" designation on my unit has been
spotted in the wild by other owners of these units before, with no information
on how or why it was different from the B, C, or D units that seem to be a lot
more common.   My reseller, a relative newcomer to the scene, apparently
has a video on their Facebook page discussing how to go about hooking up 
an external microphone to the unit, a feature included on the pinout for all 
of these units, but apparently only functional in the "BJ" units, a rule which
is only binding amongst the units offered by this particular seller.   The reason
I explain this is so you will understand that you need to do your homework
before you go flashing any firmware that you find floating around on the
web for these things!   They're not all alike!   Most significantly, my unit has 
two DRAM chips on the board instead of one like most of these units have, 
and is missing several ICs that are present in earlier versions.   The all
important "test points" are laid out differently as well.   This was unfortunate
in my case because I found myself needing to use them after flashing an
incompatible preloader, and none of the photos available online talking about
these "test points" matched my board.   It took a little bit of poking around
with a meter and a soldering iron, but I eventually worked out where they
are on this unit, and was able to enable the "backup" preloader and start
flashing firmware.   The best resource currently available for these things
is a Russian forum where, as nearly as I can tell, the scene is still alive and
well, and there is quite a lot to be learned from reading there.   But Google
translate will only get a person so far and I don't speak Cyrillic.   I probably
ended up flashing about 20 different firmwares before I found one that brought
my unit back to life again, and surprisingly, the one that ended up working
for me was prefixed as a YT9213C on the zip file, but identifies as a YT9218B
from within the Android settings menu.   The "model number" distinctions are
as nearly as I can tell, completely meaningless.  Proceed with caution!   If you
have questions about the build or any of the files here before I get around to 
getting a good guide written up, I can be contacted via email at 
threadreaper@gmail.com.
