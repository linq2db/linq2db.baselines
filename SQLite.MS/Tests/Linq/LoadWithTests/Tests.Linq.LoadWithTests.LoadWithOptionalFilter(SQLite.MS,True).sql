-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[MainItem] [t1]
	) [m_1]
		INNER JOIN [SubItem1] [d] ON [m_1].[Id] = [d].[ParentId]
WHERE
	[d].[Value] IN ('A')

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[MainItem] [t1]

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[MainItem] [t1]
	) [m_1]
		INNER JOIN [SubItem1] [d] ON [m_1].[Id] = [d].[ParentId]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[MainItem] [t1]

