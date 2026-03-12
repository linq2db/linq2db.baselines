-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[Name],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT
					[p].[Id]
				FROM
					[PeopleForLoadWith] [p]
				WHERE
					EXISTS(
						SELECT
							*
						FROM
							[PeopleForLoadWith] [c_1]
						WHERE
							[p].[Id] = [c_1].[ParentId]
					)
				LIMIT 1
			) [t1]
				INNER JOIN [PeopleForLoadWith] [d] ON [t1].[Id] = [d].[ParentId]
	) [m_1]
		INNER JOIN [PeopleForLoadWith] [d_1] ON [m_1].[Id] = [d_1].[ParentId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Name],
	[d].[ParentId]
FROM
	(
		SELECT
			[p].[Id]
		FROM
			[PeopleForLoadWith] [p]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[PeopleForLoadWith] [c_1]
				WHERE
					[p].[Id] = [c_1].[ParentId]
			)
		LIMIT 1
	) [m_1]
		INNER JOIN [PeopleForLoadWith] [d] ON [m_1].[Id] = [d].[ParentId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[Name],
	[p].[ParentId]
FROM
	[PeopleForLoadWith] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[PeopleForLoadWith] [c_1]
		WHERE
			[p].[Id] = [c_1].[ParentId]
	)
LIMIT 1

