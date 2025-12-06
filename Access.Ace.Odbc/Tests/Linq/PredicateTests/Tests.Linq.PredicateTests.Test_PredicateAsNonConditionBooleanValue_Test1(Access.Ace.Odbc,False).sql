-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value1] = [r].[Value2],
	[r].[Value1] <> [r].[Value2],
	[r].[Value1] > [r].[Value2],
	[r].[Value1] < [r].[Value2],
	[r].[Value1] >= [r].[Value2],
	[r].[Value1] <= [r].[Value2],
	IIF([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL, True, False),
	IIF([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL, True, False),
	IIF([r].[Value4] > [r].[Value5], True, False),
	IIF([r].[Value4] < [r].[Value5], True, False),
	IIF([r].[Value4] >= [r].[Value5], True, False),
	IIF([r].[Value4] <= [r].[Value5], True, False),
	IIF([r].[Value1] = [r].[Value4], True, False),
	[r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL,
	IIF([r].[Value1] > [r].[Value4], True, False),
	IIF([r].[Value1] < [r].[Value4], True, False),
	IIF([r].[Value1] >= [r].[Value4], True, False),
	IIF([r].[Value1] <= [r].[Value4], True, False),
	IIF([r].[Value5] = [r].[Value2], True, False),
	[r].[Value5] <> [r].[Value2] OR [r].[Value5] IS NULL,
	IIF([r].[Value5] > [r].[Value2], True, False),
	IIF([r].[Value5] < [r].[Value2], True, False),
	IIF([r].[Value5] >= [r].[Value2], True, False),
	IIF([r].[Value5] <= [r].[Value2], True, False)
FROM
	[BooleanTable] [r]
WHERE
	[r].[Id] <> -1

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

