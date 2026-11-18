-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	STRING_AGG([t1].[NullableValue], ', ') WITHIN GROUP (ORDER BY [t1].[NotNullableValue])
FROM
	[SampleClass] [t1]

