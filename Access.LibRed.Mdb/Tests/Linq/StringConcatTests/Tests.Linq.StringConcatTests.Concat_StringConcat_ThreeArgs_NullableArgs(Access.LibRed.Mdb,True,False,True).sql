-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t].[Value1] IS NULL THEN ''
		ELSE [t].[Value1]
	END + [t].[Value2] + CASE
		WHEN [t].[Value3] IS NULL THEN ''
		ELSE [t].[Value3]
	END
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

