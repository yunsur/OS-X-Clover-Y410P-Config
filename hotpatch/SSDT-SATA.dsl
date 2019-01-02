
// Adding SATA device

DefinitionBlock("", "SSDT", 2, "Y410P", "SATA", 0)
{
    External(_SB_.PCI0, DeviceObj)
    
    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            "AAPL,slot-name", "Built In",
            "name", Buffer () {"Intel Lynx Point PCH - SATA AHCI Controller"},
            "model", Buffer () {"Intel Lynx Point PCH - SATA AHCI Controller"}
        })
    }
}

// EOF