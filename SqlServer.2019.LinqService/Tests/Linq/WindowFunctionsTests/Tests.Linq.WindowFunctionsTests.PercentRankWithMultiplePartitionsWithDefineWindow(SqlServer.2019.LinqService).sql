BeforeExecute
-- SqlServer.2019

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
	PERCENT_RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY [x].[Timestamp]),
	PERCENT_RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Value]),
	PERCENT_RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp] DESC),
	PERCENT_RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Value] DESC),
	PERCENT_RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp], [x].[Value]),
	PERCENT_RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp] DESC, [x].[Value] DESC)
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

