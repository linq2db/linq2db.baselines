-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[Key_1],
	Coalesce((
		SELECT
			GROUP_CONCAT(CAST([t1].[IntV] AS NVarChar(11)), '')
		FROM
			(
				SELECT
					[e].[IntV]
				FROM
					[ConcatGroupedTypedEntity] [e]
				WHERE
					[g_2].[Key_1] = [e].[GrpId]
				ORDER BY
					[e].[PK]
			) [t1]
	), '')
FROM
	(
		SELECT DISTINCT
			[g_1].[GrpId] as [Key_1]
		FROM
			[ConcatGroupedTypedEntity] [g_1]
	) [g_2]
ORDER BY
	[g_2].[Key_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[GuidV],
	[t1].[IntV]
FROM
	[ConcatGroupedTypedEntity] [t1]

