-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[Key_1],
	Coalesce((
		SELECT
			GROUP_CONCAT(Lower(substr(hex([t1].[GuidV]), 7, 2) || substr(hex([t1].[GuidV]), 5, 2) || substr(hex([t1].[GuidV]), 3, 2) || substr(hex([t1].[GuidV]), 1, 2) || '-' || substr(hex([t1].[GuidV]), 11, 2) || substr(hex([t1].[GuidV]), 9, 2) || '-' || substr(hex([t1].[GuidV]), 15, 2) || substr(hex([t1].[GuidV]), 13, 2) || '-' || substr(hex([t1].[GuidV]), 17, 4) || '-' || substr(hex([t1].[GuidV]), 21, 12)), '')
		FROM
			(
				SELECT
					[e].[GuidV]
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[GuidV],
	[t1].[IntV]
FROM
	[ConcatGroupedTypedEntity] [t1]

