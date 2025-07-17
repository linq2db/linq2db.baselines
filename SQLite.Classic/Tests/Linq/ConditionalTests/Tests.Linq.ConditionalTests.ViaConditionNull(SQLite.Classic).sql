BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[p2].[Id],
	[p2].[StringProp]
FROM
	[ConditionalData] [x]
		LEFT JOIN [ConditionalData] [p2] ON [p2].[Id] = [x].[Id] AND [p2].[StringProp] IS NOT NULL
WHERE
	[p2].[Id] IS NULL OR [p2].[StringProp] = '-1'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

