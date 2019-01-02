
// Add the missing MCHC device

DefinitionBlock("", "SSDT", 2, "Y410P", "MCHC", 0)
{
    External(_SB_.PCI0, DeviceObj)

    Scope(_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
}

// EOF
