-- SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[MainItem] [t1]
			) [t2]
				INNER JOIN [SubItem1] [d] ON [t2].[Id] = [d].[ParentId]
	) [m_1]
		INNER JOIN [SubItem1_Sub] [d_1] ON [m_1].[Id] = [d_1].[ParentId]

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[MainItem] [t1]

-- SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[MainItem] [t1]
			) [t2]
				INNER JOIN [SubItem1] [d] ON [t2].[Id] = [d].[ParentId]
	) [m_1]
		INNER JOIN [SubItem1_Sub] [d_1] ON [m_1].[Id] = [d_1].[ParentId]
WHERE
	[d_1].[Value] IN ('A')

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[MainItem] [t1]

