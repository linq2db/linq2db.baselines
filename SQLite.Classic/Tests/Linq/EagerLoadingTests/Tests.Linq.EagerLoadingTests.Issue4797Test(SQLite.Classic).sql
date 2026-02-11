-- SQLite.Classic SQLite

SELECT
	[m_1].[cond],
	[m_1].[Item1],
	[d_1].[Id],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [cond],
			[t2].[Item1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id] as [Item1]
				FROM
					[Issue4797Parent] [t1]
			) [t2]
				INNER JOIN [Issue4797Child] [d] ON [t2].[Item1] = [d].[ParentId]
				LEFT JOIN [Issue4797Parent] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_1]
		INNER JOIN [Issue4797Child] [d_1] ON [m_1].[cond] = [d_1].[ParentId]

-- SQLite.Classic SQLite

SELECT
	[m_1].[Item1],
	[d].[Id],
	[d].[ParentId],
	[a_Parent].[Id]
FROM
	(
		SELECT DISTINCT
			[t1].[Id] as [Item1]
		FROM
			[Issue4797Parent] [t1]
	) [m_1]
		INNER JOIN [Issue4797Child] [d] ON [m_1].[Item1] = [d].[ParentId]
		LEFT JOIN [Issue4797Parent] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

-- SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Issue4797Parent] [t1]

