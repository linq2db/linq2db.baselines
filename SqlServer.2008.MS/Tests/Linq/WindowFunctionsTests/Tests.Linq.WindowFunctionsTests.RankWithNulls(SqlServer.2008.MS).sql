-- SqlServer.2008.MS SqlServer.2008

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
	RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY CASE
		WHEN [x].[Timestamp] IS NULL THEN 0
		ELSE 1
	END, [x].[Timestamp]),
	RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY CASE
		WHEN [x].[Timestamp] IS NULL THEN 1
		ELSE 0
	END, [x].[Timestamp] DESC)
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

