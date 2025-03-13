BeforeExecute
-- SqlServer.2016

SELECT
	MIN([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableIntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[LongValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableLongValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[DoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableDoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[DecimalValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableDecimalValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[FloatValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableFloatValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[ShortValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableShortValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[ByteValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[NullableByteValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

