-- SqlServer.2019.MS SqlServer.2019

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
	NTILE(4) OVER (PARTITION BY [x].[CategoryId] ORDER BY IIF([x].[Timestamp] IS NULL, 0, 1), [x].[Timestamp]),
	NTILE(4) OVER (PARTITION BY [x].[CategoryId] ORDER BY IIF([x].[Timestamp] IS NULL, 1, 0), [x].[Timestamp] DESC)
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

