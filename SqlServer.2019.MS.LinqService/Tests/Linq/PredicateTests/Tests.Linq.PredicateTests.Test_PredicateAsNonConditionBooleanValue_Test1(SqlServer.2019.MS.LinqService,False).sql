BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	IIF([r].[Value1] = [r].[Value2], 1, 0),
	IIF([r].[Value1] <> [r].[Value2], 1, 0),
	IIF([r].[Value1] > [r].[Value2], 1, 0),
	IIF([r].[Value1] < [r].[Value2], 1, 0),
	IIF([r].[Value1] >= [r].[Value2], 1, 0),
	IIF([r].[Value1] <= [r].[Value2], 1, 0),
	IIF([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL, 1, 0),
	IIF([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL, 1, 0),
	IIF([r].[Value4] > [r].[Value5], 1, 0),
	IIF([r].[Value4] < [r].[Value5], 1, 0),
	IIF([r].[Value4] >= [r].[Value5], 1, 0),
	IIF([r].[Value4] <= [r].[Value5], 1, 0),
	IIF([r].[Value1] = [r].[Value4], 1, 0),
	IIF([r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0),
	IIF([r].[Value1] > [r].[Value4], 1, 0),
	IIF([r].[Value1] < [r].[Value4], 1, 0),
	IIF([r].[Value1] >= [r].[Value4], 1, 0),
	IIF([r].[Value1] <= [r].[Value4], 1, 0),
	IIF([r].[Value5] = [r].[Value2], 1, 0),
	IIF([r].[Value5] <> [r].[Value2] OR [r].[Value5] IS NULL, 1, 0),
	IIF([r].[Value5] > [r].[Value2], 1, 0),
	IIF([r].[Value5] < [r].[Value2], 1, 0),
	IIF([r].[Value5] >= [r].[Value2], 1, 0),
	IIF([r].[Value5] <= [r].[Value2], 1, 0)
FROM
	[BooleanTable] [r]
WHERE
	[r].[Id] <> -1

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

