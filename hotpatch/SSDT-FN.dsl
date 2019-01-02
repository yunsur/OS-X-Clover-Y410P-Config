
// Replace Q11 & Q12 key functions for brightness
// Keyboard/Trackpad
DefinitionBlock ("", "SSDT", 2, "Y410P", "FN", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)
    External (PS2K, UnknownObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.EC0)
    {
        // _Q11 called on brightness down key
        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x20) // ELAN
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0405) // Synaptics/ALPS
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0205)
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0285)
        }

        // _Q12 called on brightness up key
        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x10) // ELAN
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0406) // Synaptics/ALPS
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0206)
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0286)
        }
       // Select specific keyboard map in VoodooPS2Keyboard.kext
        Scope (\_SB.PCI0.LPCB.PS2K)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x04)
                {
                    "RM,oem-id", 
                    "LENOVO", 
                    "RM,oem-table-id", 
                    "Haswell-Ideapad"
                })
            }

            Name (RMCF, Package (0x0A)
            {
                "Controller", 
                Package (0x02)
                {
                    "WakeDelay", 
                    Zero
                }, 

                "Sentelic FSP", 
                Package (0x02)
                {
                    "DisableDevice", 
                    ">y"
                }, 

                "ALPS GlidePoint", 
                Package (0x02)
                {
                    "DisableDevice", 
                    ">y"
                }, 

                "Synaptics TouchPad", 
                Package (0x08)
                {
                    "MultiFingerVerticalDivisor", 
                    0x09, 
                    "MultiFingerHorizontalDivisor", 
                    0x09, 
                    "MomentumScrollThreshY", 
                    0x0C, 
                    "DynamicEWMode", 
                    ">y"
                }, 

                "Keyboard", 
                Package (0x0A)
                {
                    "Breakless PS2", 
                    Package (0x01)
                    {
                        Package (0x00){}
                    }, 

                    "Custom ADB Map", 
                    Package (0x04)
                    {
                        Package (0x00){}, 
                        "e03f=3f", //Apple Fn
                        "e0fb=91", //brightness down
                        "e0fc=90"//brightness up
                    }, 

                    "Custom PS2 Map", 
                    Package (0x09)
                    {
                        Package (0x00){}, 
                        "1d=38", 
                        "38=1d", 
                        "e01d=e038", 
                        "e038=e01d", 
                        "46=e020" ,// Mute
                        "e046=65" , //End=F14
                        "e037=64", //PrtSc=F13
                        "e05d=e03f"//Apple Fn
                    }, 
                 }
            })
        }
    }
}

// EOF