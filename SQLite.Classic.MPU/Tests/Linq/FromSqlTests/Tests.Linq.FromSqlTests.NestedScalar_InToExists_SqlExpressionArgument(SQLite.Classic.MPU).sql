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
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) [t1]
		WHERE
			[p].[PersonID] = [t1].[value]
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
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) [t1]
		WHERE
			[p].[PersonID] = [t1].[value]
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
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) [t1]
		WHERE
			[p].[PersonID] = [t1].[value]
	)

