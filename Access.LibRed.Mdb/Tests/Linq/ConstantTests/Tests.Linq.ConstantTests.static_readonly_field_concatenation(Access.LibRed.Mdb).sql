-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	(CASE
		WHEN [e].[StringValue] IS NULL THEN ''
		ELSE [e].[StringValue]
	END + '1') = 'StrValue1'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

