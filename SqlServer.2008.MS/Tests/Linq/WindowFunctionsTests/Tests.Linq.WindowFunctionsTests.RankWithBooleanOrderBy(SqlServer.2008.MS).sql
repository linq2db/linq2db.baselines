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
	[x].[BoolValue],
	[x].[NullableBoolValue],
	RANK() OVER (ORDER BY CASE
		WHEN [x].[IntValue] = 20 THEN 1
		ELSE 0
	END),
	RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY CASE
		WHEN [x].[IntValue] = 20 THEN 1
		ELSE 0
	END, [x].[Id]),
	RANK() OVER (PARTITION BY [x].[CategoryId] ORDER BY CASE
		WHEN [x].[IntValue] = 20 THEN 1
		ELSE 0
	END DESC, [x].[Id]),
	RANK() OVER (ORDER BY CASE
		WHEN [x].[NullableIntValue] IS NOT NULL THEN 1
		ELSE 0
	END, [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

