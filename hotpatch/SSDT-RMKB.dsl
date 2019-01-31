
// Adding RMKB device

DefinitionBlock("", "SSDT", 2, "Y410P", "RMKB", 0)
{
    External(_SB_.PCI0, DeviceObj)

    Scope(_SB.PCI0)
    {
        Device (RMKB)
        {
            Name (_HID, "RMKB0000")  // _HID: Hardware ID
        }
    }
}

// EOF
