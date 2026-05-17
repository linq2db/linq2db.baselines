-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	Length([nm].[MiddleName]) <> 0 OR [nm].[MiddleName] IS NULL

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

