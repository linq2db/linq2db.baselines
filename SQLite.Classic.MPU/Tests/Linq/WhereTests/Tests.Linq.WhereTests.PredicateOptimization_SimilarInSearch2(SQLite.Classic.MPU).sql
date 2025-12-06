-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	([x].[FirstName] = 'John' OR [x].[FirstName] = 'Jane') AND
	[x].[PersonID] > 3 AND [x].[FirstName] = 'Jane'

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
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	([x].[FirstName] = 'John' OR [x].[FirstName] = 'Jane') AND
	[x].[PersonID] > 3

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

