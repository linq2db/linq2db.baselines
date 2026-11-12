-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF([t].[Value1] IS NULL, '', [t].[Value1]) + CStr([t].[Value2]) + LCase(Mid(CStr([t].[Value3]), 2, 36))
FROM
	[StringConcatIntGuidNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatIntGuidNullEntity] [t1]

