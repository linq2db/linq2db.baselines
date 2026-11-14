-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			MAX([t1].[item])
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					([p].[PersonID]), (2)
				) [t1]
	) = 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			MIN([t1].[item])
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					([p].[PersonID]), (2)
				) [t1]
	) = 2

