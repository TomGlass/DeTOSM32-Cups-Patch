# DeTOSM32-Cups-Patch

## TLDR
Quick & simple patch to force CUPS to re-share the printer "Label" on boot, LeTOS/DeTOS 1.3.0. CUPS behaves weird on this OS and this is the work around.

## Ramblings
CUPS refuses to listen to the DefaultShared Yes in cupsd.conf and refuses to listen to Shared Yes in printers.conf in /etc/cups/ so this must be manually set on boot, due to using an Arch build from 2012, and a DETOS/LETOS from 2016 in a squashfs format, options are limited. Also intrusions on the OS are to be minimal.
~/.profile was selected to be nice and simple, rc.local isn't available on our OS.

An additional option on the desktop is added to re-share the printer in the event CUPS de-shares it whilst running. This just runs 

## Build squashfs from source 

(SquashFS needs installing, Mac/Linux may be required)
mksquashfs source Final.squashfs



### OS dump information
sh-4.3$ cat arch-release 
2012.10.24
sh-4.3$ 
sh-4.3$ cat detos.version 
:LeTOS 1.3.0 20161201164348
sh-4.3$ cat detos.machine 
unified
sh-4.3$ cat os-release 
NAME="'LeTOS'"
VENDOR="'Lenovo'"
VERSION="'1.3.1'"
BASE_VERSION="'1.3'"
ID="'LeTOS'"
PRETTY_NAME="'LeTOS (Lenovo edition)'"
BUILD="'20161018153034'"
BUILD_TYPE="'release'"
sh-4.3$ 

CUPS version (either 2.1.3 or 1.6.3)
