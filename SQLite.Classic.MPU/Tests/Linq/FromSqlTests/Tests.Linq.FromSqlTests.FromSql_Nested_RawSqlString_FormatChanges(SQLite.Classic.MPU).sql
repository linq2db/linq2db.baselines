-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = 1
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = 2
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

