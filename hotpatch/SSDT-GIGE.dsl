
// Adding GIGE device

DefinitionBlock ("", "SSDT", 2, "Y410P", "GIGE", 0x00003000)
{
    External (_SB.PCI0.RP04, DeviceObj)
    External (_SB.PCI0.RP04.PXSX, DeviceObj)
    
    Scope (_SB.PCI0.RP04.PXSX)
    {
        Device (GIGE)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
    
    Method (_SB.PCI0.RP04.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package ()
        {
            "AAPL,slot-name", "Built In",   
            "name", "ethernet", 
            "model", Buffer () { "Qualcomm Atheros AR8171 PCI Express Gigabit Ethernet" },
        })
    }
}

// EOF
