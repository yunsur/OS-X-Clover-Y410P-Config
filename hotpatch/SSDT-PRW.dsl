
// For solving instant wake by hooking GPRW or XPRW

DefinitionBlock("", "SSDT", 2, "Y410P", "PRW", 0)
{
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)

    Method (GPRW, 2, NotSerialized)
    {
        If (LEqual (0x6D, Arg0))
        {
            If (LEqual (0x04, Arg1))
            {
                Return (XPRW (0x09, Arg1))
            }
        }

        If (LEqual (0x0D, Arg0))
        {
            If (LEqual (0x04, Arg1))
            {
                Return (XPRW (0x09, Arg1))
            }
        }

        Return (XPRW (Arg0, Arg1))
    }
}

// EOF
