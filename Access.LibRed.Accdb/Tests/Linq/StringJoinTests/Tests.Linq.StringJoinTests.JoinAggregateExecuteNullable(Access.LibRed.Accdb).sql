-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	STRING_AGG(CASE
		WHEN [t1].[NullableValue] IS NULL THEN ''
		ELSE [t1].[NullableValue]
	END, ', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue])
FROM
	[SampleClass] [t1]

