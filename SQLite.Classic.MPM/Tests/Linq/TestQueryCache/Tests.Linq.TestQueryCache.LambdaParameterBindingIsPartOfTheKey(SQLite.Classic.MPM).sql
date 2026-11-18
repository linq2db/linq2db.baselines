-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	1 = 0

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] > [p].[PersonID]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] > [p].[PersonID]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	1 = 0

