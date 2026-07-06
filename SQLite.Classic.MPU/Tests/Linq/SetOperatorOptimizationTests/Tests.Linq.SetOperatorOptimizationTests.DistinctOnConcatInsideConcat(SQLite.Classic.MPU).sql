-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t3].[set_col_0__]
FROM
	(
		SELECT
			[t2].[set_col_0__]
		FROM
			(
				SELECT DISTINCT
					[t1].[set_col_0__]
				FROM
					(
						SELECT
							[itm].[ItemNumber] as [set_col_0__]
						FROM
							[Thing] [t],
							[Item] [itm]
						WHERE
							[itm].[ItemId] = [t].[ItemId]
						UNION ALL
						SELECT
							[itm_1].[ItemNumber] as [set_col_0__]
						FROM
							[Thing] [t_1],
							[Item] [itm_1]
						WHERE
							[itm_1].[AltItemId] = [t_1].[ItemId]
					) [t1]
			) [t2]
		UNION ALL
		SELECT
			[t_2].[ItemNumber] as [set_col_0__]
		FROM
			[Thing] [t_2]
	) [t3]
ORDER BY
	[t3].[set_col_0__]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ItemId],
	[t1].[ItemNumber]
FROM
	[Thing] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ItemId],
	[t1].[AltItemId],
	[t1].[ItemNumber]
FROM
	[Item] [t1]

