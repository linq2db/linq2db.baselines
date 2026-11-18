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
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[SubItem1] [s]
				WHERE
					[m_1].[Id] = [s].[ParentId]
			)
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubItem1] [s]
		WHERE
			[m_1].[Id] = [s].[ParentId]
	)

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
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[SubItem1] [s]
				WHERE
					[m_1].[Id] = [s].[ParentId] AND [s].[Value] IN ('A')
			)
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
WHERE
	[d].[Value] IN ('A')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubItem1] [s]
		WHERE
			[m_1].[Id] = [s].[ParentId] AND [s].[Value] IN ('A')
	)

