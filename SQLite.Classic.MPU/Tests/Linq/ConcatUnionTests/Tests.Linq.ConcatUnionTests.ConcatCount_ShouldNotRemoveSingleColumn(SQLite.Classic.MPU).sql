-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT
			CAST(1 AS INTEGER) as [c1]
		FROM
			[Person] [t1]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [c1]
		FROM
			[Parent] [t2]
	) [t3]

