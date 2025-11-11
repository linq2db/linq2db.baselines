-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[c_1].[Id],
	[c_1].[Value],
	[c_1].[Value] <> 'Value 1' OR [c_1].[Value] IS NULL,
	(
		SELECT
			[sc].[Id]
		FROM
			[ChildEntityObject] [sc]
		LIMIT 1
	),
	(
		SELECT
			[sc_1].[Value]
		FROM
			[ChildEntityObject] [sc_1]
		LIMIT 1
	)
FROM
	[MainEntityObject] [t1]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [t1].[Id]
ORDER BY
	[t1].[Id]

