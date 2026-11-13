-- SqlServer.2017.MS SqlServer.2017
SELECT
	[r].[Id],
	ROUND([r].[D], 0),
	ROUND([r].[D], [r].[P]),
	IIF([r].[D] - FLOOR([r].[D]) = 0.5, ROUND([r].[D] * 0.5, 0) * 2, ROUND([r].[D], 0)),
	IIF(([r].[D] * 2 = ROUND([r].[D] * 2, [r].[P]) OR [r].[D] IS NULL AND ([r].[D] IS NULL OR [r].[P] IS NULL)) AND ([r].[D] <> ROUND([r].[D], [r].[P]) OR [r].[D] IS NULL AND NOT ([r].[D] IS NULL OR [r].[P] IS NULL) OR [r].[D] IS NOT NULL AND [r].[P] IS NULL), ROUND([r].[D] / 2, [r].[P]) * 2, ROUND([r].[D], [r].[P]))
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

