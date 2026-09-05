-- SqlServer.2014.MS SqlServer.2014
SELECT
	[x].[Id],
	[x].[Name],
	[x].[CategoryId],
	[x].[Value],
	[x].[Timestamp],
	[x].[IntValue],
	[x].[NullableIntValue],
	[x].[LongValue],
	[x].[NullableLongValue],
	[x].[DoubleValue],
	[x].[NullableDoubleValue],
	[x].[DecimalValue],
	[x].[NullableDecimalValue],
	[x].[FloatValue],
	[x].[NullableFloatValue],
	[x].[ShortValue],
	[x].[NullableShortValue],
	[x].[ByteValue],
	[x].[NullableByteValue],
	[x].[BoolValue],
	[x].[NullableBoolValue],
	RANK() OVER (ORDER BY IIF([x].[IntValue] = 20, 1, 0)),
	RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY IIF([x].[IntValue] = 20, 1, 0), [x].[Id]),
	RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY IIF([x].[IntValue] = 20, 1, 0) DESC, [x].[Id]),
	RANK() OVER (ORDER BY IIF([x].[NullableIntValue] IS NOT NULL, 1, 0), [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

