BeforeExecute
-- SqlServer.2022

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
	RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp]),
	RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Value]),
	RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp] DESC),
	RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Value] DESC),
	RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp], [x].[Value]),
	RANK() OVER (PARTITION BY [x].[CategoryId], [x].[Name] ORDER BY [x].[Timestamp] DESC, [x].[Value] DESC)
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

