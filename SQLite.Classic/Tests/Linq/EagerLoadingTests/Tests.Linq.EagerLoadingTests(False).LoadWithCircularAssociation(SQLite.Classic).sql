-- SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[CircularLoadWithParent] [t1]
			) [t2]
				INNER JOIN [CircularLoadWithChild] [d] ON [t2].[Id] = [d].[ParentId]
				LEFT JOIN [CircularLoadWithParent] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_1]
		INNER JOIN [CircularLoadWithChild] [d_1] ON [m_1].[Id] = [d_1].[ParentId]

-- SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[a_Parent].[Id]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[CircularLoadWithParent] [t1]
	) [m_1]
		INNER JOIN [CircularLoadWithChild] [d] ON [m_1].[Id] = [d].[ParentId]
		LEFT JOIN [CircularLoadWithParent] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id]
FROM
	[CircularLoadWithParent] [t1]

