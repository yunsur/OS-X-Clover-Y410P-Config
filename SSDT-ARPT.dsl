
// Adding BCM94352HMB device

DefinitionBlock ("", "SSDT", 2, "Y410P", "ARPT", 0x00003000)
{
    External (_SB.PCI0.RP05, DeviceObj) 
    External (_SB.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
   
    Scope (_SB.PCI0.RP05.PXSX)
    {         
        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_PRW, Package ()  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
          Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
          {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package ()
            {
                "compatible","pci14e4,43a0",
            })
          }
       }    
    }
    
    Method (_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package ()
        {
            "AAPL,slot-name", "Built In", 
            "device_type", "AirPort Extreme",
            "name", Buffer () { "AirPort Extreme" }, 
            "model", Buffer () { "Broadcom BCM94352HMB Wireless Network Adapter" }
        })
    }
}

// EOF
