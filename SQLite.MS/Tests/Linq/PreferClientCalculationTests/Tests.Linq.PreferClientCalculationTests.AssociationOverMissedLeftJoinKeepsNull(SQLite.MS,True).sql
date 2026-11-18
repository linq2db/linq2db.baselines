-- SQLite.MS SQLite
SELECT
	[e].[Id],
	[a_Parent].[Name]
FROM
	[KeyedChildEntity] [e]
		LEFT JOIN [KeyedChildEntity] [j] ON [j].[Id] = [e].[Id] + 1000
		LEFT JOIN [KeyedEntity] [a_Parent] ON [j].[ParentId] = [a_Parent].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[ParentId]
FROM
	[KeyedChildEntity] [t1]

