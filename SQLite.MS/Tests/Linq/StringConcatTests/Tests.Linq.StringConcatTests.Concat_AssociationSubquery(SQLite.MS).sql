-- SQLite.MS SQLite

SELECT
	[p].[Id],
	Coalesce((
		SELECT
			GROUP_CONCAT(Coalesce([t1].[Value_1], ''), '')
		FROM
			(
				SELECT
					[a_Children].[Value] as [Value_1]
				FROM
					[ConcatChild] [a_Children]
				WHERE
					[p].[Id] = [a_Children].[ParentId]
				ORDER BY
					[a_Children].[Id]
			) [t1]
	), '')
FROM
	[ConcatParent] [p]
ORDER BY
	[p].[Id]

-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[Value]
FROM
	[ConcatParent] [m_1]
		INNER JOIN [ConcatChild] [d] ON [m_1].[Id] = [d].[ParentId]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[ConcatParent] [t1]

