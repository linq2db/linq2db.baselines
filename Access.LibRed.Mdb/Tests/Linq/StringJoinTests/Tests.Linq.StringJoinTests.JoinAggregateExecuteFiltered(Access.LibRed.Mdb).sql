-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	STRING_AGG(CASE
		WHEN [x].[NullableValue] IS NULL THEN ''
		ELSE [x].[NullableValue]
	END, ', ')
FROM
	[SampleClass] [x]
WHERE
	[x].[NullableValue] IS NOT NULL AND [x].[NullableValue] IN ('A', 'B')

