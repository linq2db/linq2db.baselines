-- SqlServer.2005.MS SqlServer.2005
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
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN [x].[IntValue] = 20 THEN 1
		ELSE 0
	END, [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN [x].[IntValue] = 20 THEN 1
		ELSE 0
	END ORDER BY [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN [x].[NullableIntValue] IS NOT NULL THEN 1
		ELSE 0
	END ORDER BY [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[CategoryId] ORDER BY CASE
		WHEN [x].[NullableIntValue] IS NOT NULL THEN 1
		ELSE 0
	END, [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

