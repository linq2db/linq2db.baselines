-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ParentId],
	[t1].[Value_1],
	[t1].[Name]
FROM
	[MainTable] [p]
		LEFT JOIN (
			SELECT
				[a_Children].[Id],
				[a_Children].[ParentId],
				[a_Children].[Value] as [Value_1],
				[a_Children].[Name],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[Value] DESC) as [rn]
			FROM
				[ChildTable] [a_Children]
		) [t1] ON [p].[Id] = [t1].[ParentId] AND [t1].[rn] = 1
WHERE
	[p].[Id] = 1
LIMIT 1

