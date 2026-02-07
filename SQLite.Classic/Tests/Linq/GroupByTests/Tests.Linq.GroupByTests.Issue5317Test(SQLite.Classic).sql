-- SQLite.Classic SQLite

SELECT
	[t2].[ReferenceName]
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[TestTable] [g_1]
		GROUP BY
			[g_1].[Id]
	) [g_2]
		INNER JOIN (
			SELECT
				[a_Reference].[Name] as [ReferenceName],
				ROW_NUMBER() OVER (PARTITION BY [t1].[Id] ORDER BY [t1].[Id]) as [rn],
				[t1].[Id]
			FROM
				[TestTable] [t1]
					INNER JOIN [Reference] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
		) [t2] ON [g_2].[Id] = [t2].[Id] AND [t2].[rn] <= 1

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[ReferenceId],
	[a_Reference].[Id],
	[a_Reference].[Name]
FROM
	[TestTable] [t1]
		INNER JOIN [Reference] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[ReferenceId]
FROM
	[TestTable] [t1]

