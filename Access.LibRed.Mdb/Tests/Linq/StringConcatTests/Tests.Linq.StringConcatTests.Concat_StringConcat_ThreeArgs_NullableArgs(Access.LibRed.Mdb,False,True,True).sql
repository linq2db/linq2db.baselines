-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Value1] + CASE
		WHEN [t].[Value2] IS NULL THEN ''
		ELSE [t].[Value2]
	END + CASE
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

