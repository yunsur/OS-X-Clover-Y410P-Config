
// Disabling XSEL

DefinitionBlock("", "SSDT", 2, "Y410P", "XSEL", 0)
{
    External(_SB_.PCI0.XHC, DeviceObj)

    // In DSDT, native XSEL is renamed XXEL
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.XSEL)
    {
        // do nothing
    }
}

//EOF
