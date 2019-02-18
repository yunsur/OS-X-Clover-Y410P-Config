
// Adding SMBUS device

DefinitionBlock("", "SSDT", 2, "Y410P", "SMBUS", 0)
{
    External (_SB.PCI0.SBUS, DeviceObj)
      
    Device(_SB.PCI0.SBUS.BUS0)
    {
        Name(_CID, "smbus")
        Name(_ADR, Zero)
        Device(DVL0)
            {
                Name(_ADR, 0x57)
                Name(_CID, "diagsvault")
                Method(_DSM, 4)
                {
                    If (!Arg2) { Return (Buffer() { 0x03 } ) }
                    Return (Package() { "address", 0x57 })
                }
            }
    }
    
    Method (_SB.PCI0.SBUS._DSM, 4, NotSerialized)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            "AAPL,slot-name", "Built In",
            "name", Buffer () {"Intel Lynx Point PCH - SMBus Controller"},
            "model", Buffer () {"Intel Lynx Point PCH - SMBus Controller"}
        })
    }
}

// EOF
