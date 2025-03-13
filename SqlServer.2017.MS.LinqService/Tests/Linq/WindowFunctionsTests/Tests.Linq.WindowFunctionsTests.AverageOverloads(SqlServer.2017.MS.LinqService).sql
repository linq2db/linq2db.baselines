BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	AVG([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableIntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[LongValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableLongValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[DoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableDoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[DecimalValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableDecimalValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[FloatValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableFloatValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[ShortValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableShortValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[ByteValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[NullableByteValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

