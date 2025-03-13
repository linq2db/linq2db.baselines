BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	MAX([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableIntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[LongValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableLongValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[DoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableDoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[DecimalValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableDecimalValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[FloatValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableFloatValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[ShortValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableShortValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[ByteValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[NullableByteValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

