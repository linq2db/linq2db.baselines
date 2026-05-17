-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[Id],
	[m_2].[Id_1],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId],
	[a_ParentSubItem].[Id],
	[a_ParentSubItem].[Value],
	[a_ParentSubItem].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
						INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
	) [m_2]
		INNER JOIN [SubItem1_Sub] [d_1] ON [m_2].[Id] = [d_1].[ParentId]
		LEFT JOIN [SubItem1] [a_ParentSubItem] ON [d_1].[ParentId] = [a_ParentSubItem].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem2] [d] ON [m_2].[Id] = [d].[ParentId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
		INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
WHERE
	[m_1].[Id] > 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[Id],
	[m_2].[Id_1],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId],
	[a_ParentSubItem].[Id],
	[a_ParentSubItem].[Value],
	[a_ParentSubItem].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
						INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
	) [m_2]
		INNER JOIN [SubItem1_Sub] [d_1] ON [m_2].[Id] = [d_1].[ParentId]
		LEFT JOIN [SubItem1] [a_ParentSubItem] ON [d_1].[ParentId] = [a_ParentSubItem].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
		INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m_1].[Id]
WHERE
	[m_1].[Id] > 1

