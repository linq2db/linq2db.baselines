-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p NVarChar(9) -- String
SET     @p = 'StrValue1'

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
	END + '1') = @p

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

