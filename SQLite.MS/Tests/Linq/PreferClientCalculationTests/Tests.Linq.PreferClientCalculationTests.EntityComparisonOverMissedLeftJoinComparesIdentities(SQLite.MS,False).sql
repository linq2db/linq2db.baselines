-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CASE
		WHEN [j].[Id] = [k_1].[Id] OR [j].[Id] IS NULL AND [k_1].[Id] IS NULL
			THEN 1
		ELSE 0
	END
FROM
	[KeyedEntity] [e]
		LEFT JOIN [KeyedEntity] [j] ON [j].[Id] = [e].[Id] + 1000
		LEFT JOIN [KeyedEntity] [k_1] ON [k_1].[Id] = [e].[Id] - 1

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[KeyedEntity] [t1]

