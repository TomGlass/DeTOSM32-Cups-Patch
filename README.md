# DeTOSM32-Cups-Patch

## TLDR
Quick & simple patch to force CUPS to re-share the printer "Label" on boot, LeTOS/DeTOS 1.3.0. CUPS behaves weird on this OS and this is the work around.

## Ramblings
CUPS refuses to listen to the DefaultShared Yes in cupsd.conf and refuses to listen to Shared Yes in printers.conf in /etc/cups/ so this must be manually set on boot, due to using an Arch build from 2012, and a DETOS/LETOS from 2016 in a squashfs format, options are limited. Also intrusions on the OS are to be minimal.
~/.profile was selected to be nice and simple, rc.local isn't available on our OS.

An additional option on the desktop is added to re-share the printer in the event CUPS de-shares it whilst running. This just runs 

## Download
Release file https://github.com/TomGlass/DeTOSM32-Cups-Patch/releases/download/Live/RaczM32CUPSPatch.squashfs
Release location https://github.com/TomGlass/DeTOSM32-Cups-Patch/releases/tag/Live

## Install via USB
Go to Control Panel and click Manage Packages
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/0db980bc-2e0b-45ed-bafd-e8cf530331bb)
Then select Add File
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/013e13c5-260a-4022-ac1d-dd8e60562662)
Select your USB stick and the squashfs file.
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/29a065f9-8e7a-42bb-89b0-8aed4d4cc967)
The new squashfs package will load on next boot, unplug the USB drive and now reboot the device.
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/710a9ebf-6f78-497a-8a68-9790f34f5ae9)
On boot you will see an additional option on the Desktop, to Share Thermal Printer this will re-share the printer in the event it isn't shared on boot.
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/ef6dd861-9029-4648-a70d-13f463818528)
And you can also see the package loaded in Package Manager

## Install via HTTP
Go to Control Panel and click Manage Packages
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/0db980bc-2e0b-45ed-bafd-e8cf530331bb)
Then select Add URL
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/013e13c5-260a-4022-ac1d-dd8e60562662)
Select your USB stick and the squashfs file.
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/aa50abd8-e76a-48f1-9418-d965e551f3ef)
The new squashfs package will load on next boot, now reboot the device.
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/710a9ebf-6f78-497a-8a68-9790f34f5ae9)
On boot you will see an additional option on the Desktop, to Share Thermal Printer this will re-share the printer in the event it isn't shared on boot.
![image](https://github.com/TomGlass/DeTOSM32-Cups-Patch/assets/22176422/ef6dd861-9029-4648-a70d-13f463818528)
And you can also see the package loaded in Package Manager



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
