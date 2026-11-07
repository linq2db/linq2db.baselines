-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id],
	ROUND([r].[F], [r].[P]),
	[r].[F],
	IIF(([r].[F] * 2 = ROUND([r].[F] * 2, [r].[P]) OR [r].[F] IS NULL AND ([r].[F] IS NULL OR [r].[P] IS NULL)) AND ([r].[F] <> ROUND([r].[F], [r].[P]) OR [r].[F] IS NULL AND NOT ([r].[F] IS NULL OR [r].[P] IS NULL) OR [r].[F] IS NOT NULL AND [r].[P] IS NULL), ROUND([r].[F] / 2, [r].[P]) * 2, ROUND([r].[F], [r].[P]))
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

