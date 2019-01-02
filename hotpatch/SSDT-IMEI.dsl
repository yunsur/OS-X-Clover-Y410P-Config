
// Add the missing IMEI device

DefinitionBlock("", "SSDT", 2, "Y410p", "IMEI", 0)
{
    External(_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
        }
    }
    
    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            "AAPL,slot-name", "Built In",
            "name", Buffer () {"Intel 8 Series/C220 Series Chipset MEI Controller"},
            "model", Buffer () {"Intel 8 Series/C220 Series Chipset MEI Controller"}
        })
    }
}
//EOF
