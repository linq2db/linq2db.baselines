BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p_1].[ID]) as [c1]
		FROM
			(
				SELECT
					[rec].[PersonID] as [ID]
				FROM
					[Person] [rec]
				WHERE
					[rec].[PersonID] IN (1, 2)
			) [p_1]
	) [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			COUNT([p_1].[ID]) as [c1]
		FROM
			(
				SELECT
					[rec].[PersonID] as [ID]
				FROM
					[Person] [rec]
				WHERE
					1 = 0
			) [p_1]
	) [t1]
LIMIT 2

