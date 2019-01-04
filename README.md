# OS-X-Clover-Y410P-Config

Hotpatch patches for OS X on Haswell Lenovo IdeaPad Y410P

## Intro

How to use hackintosh for Lenovo IdeaPad Y410P.<br>
The work introduced here is gathered and collected from many sources.<br>
You should buy Apple Watch computer to be able to use Apple Watch software legally in compliance with Apple's macOS EULA.<br>

## Prerequisites

| \*\*\*       |                     \*\*\*                      |
| ------------ | :---------------------------------------------: |
| Computer     |           Lenovo IdeaPad Y410P Laptop           |
| CPU          |          Intel Core i7-4700MQ @ 2.40G           |
| Chipset      |           Lenovo (Intel HM86 Chipset)           |
| Graphics     |          HD4600 (using Intel GPU only)          |
| Audio        | ALC282 @ Intel Lynx Point High Definition Audio |
| Ethernet     |        Atheros QCA8171 Gigabit Ethernet         |
| WiFi         |          Broadcom BCM94352HMB 802.11AC          |
| Bluetooth    |                 BCM20702 (4.0)                  |
| BIOS Version |                      3.08                       |

## Support

- support 10.14.x (macOS Mojave) Latest

## What Works

- Graphics with full acceleration QE/CI (using Intel GPU only) + HDMI Video
- Audio using AppleHDA
- HDMI Audio
- Ethernet (LAN)
- WiFi / Bluetooth (after replacing the Intel card (incompatible) with a compatible one like Broadcom BCM94352HMB for example
- Sleep (also sleep on Lid Close)
- Brightness
- Battery
- Keyboard / Touchpad
- CPU Power Management
- Web-Cam
- All USB ports

## Links

- Clover EFI bootloader [Link](https://sourceforge.net/projects/cloverefiboot/)

- AppleSupportPkg [Link](https://github.com/acidanthera/AppleSupportPkg)

- AptioFixPkg [Link](https://github.com/acidanthera/AptioFixPkg)

- ACPIBatteryManager [Link](https://bitbucket.org/RehabMan/os-x-acpi-battery-driver/)

- AirportBrcmFixup [Link](https://github.com/acidanthera/AirportBrcmFixup)

- AppleALC [Link](https://github.com/acidanthera/AppleALC)

- ApplePS2SmartTouchPad [Link](https://osxlatitude.com/forums/topic/1948-elan-focaltech-and-synaptics-smart-touchpad-driver-mac-os-x/)

- AtherosE2200Ethernet [Link](https://github.com/Mieze/AtherosE2200Ethernet)

- BrcmPatchRAM [Link](https://bitbucket.org/RehabMan/os-x-brcmpatchram/downloads/)

- FakeSMC [Link](https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/)

- Lilu [Link](https://github.com/acidanthera/Lilu)

- WhateverGreen [Link](https://github.com/acidanthera/WhateverGreen)

- Enable macOS HiDPI [Link](https://github.com/xzhih/one-key-hidpi)

## Credits

- panybbib
- Z39
- Rehabman
- acidanthera
- Mieze

## License

[MIT](https://github.com/yunsur/hackintosh/blob/master/LICENSE)
