-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Value1] + IIF([t].[Value2] IS NULL, '', [t].[Value2]) + [t].[Value3]
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

