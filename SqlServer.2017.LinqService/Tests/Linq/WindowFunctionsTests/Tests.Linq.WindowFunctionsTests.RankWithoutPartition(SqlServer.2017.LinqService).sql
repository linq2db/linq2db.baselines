BeforeExecute
-- SqlServer.2017

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
	RANK() OVER (ORDER BY [x].[Timestamp]),
	RANK() OVER (ORDER BY [x].[Value]),
	RANK() OVER (ORDER BY [x].[Timestamp] DESC),
	RANK() OVER (ORDER BY [x].[Value] DESC),
	RANK() OVER (ORDER BY [x].[Timestamp], [x].[Value]),
	RANK() OVER (ORDER BY [x].[Timestamp] DESC, [x].[Value] DESC)
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

