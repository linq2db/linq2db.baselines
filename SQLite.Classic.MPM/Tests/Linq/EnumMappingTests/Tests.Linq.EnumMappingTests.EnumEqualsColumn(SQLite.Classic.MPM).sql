-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID],
	[c_1].[PersonID]
FROM
	[Person] [p],
	[Person] [c_1]
WHERE
	[p].[Gender] = [c_1].[Gender]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

