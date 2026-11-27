-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	INSTR([p].[MiddleName], 'o')
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	INSTR([p].[FirstName], [p].[MiddleName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	INSTR([p].[FirstName], CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE 'o'
	END)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	INSTR([p].[MiddleName], 'o') = 0
ORDER BY
	[p].[PersonID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

