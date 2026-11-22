-- SQLite.Classic SQLite
SELECT
	(
		SELECT
			MIN([t2].[Id])
		FROM
			[Item] [t2]
	),
	(
		SELECT
			MAX([t3].[Id])
		FROM
			[Item] [t3]
	),
	Coalesce((
		SELECT
			SUM([t4].[Id])
		FROM
			[Item] [t4]
	), 0)
FROM
	[Item] [t1]
LIMIT 1

