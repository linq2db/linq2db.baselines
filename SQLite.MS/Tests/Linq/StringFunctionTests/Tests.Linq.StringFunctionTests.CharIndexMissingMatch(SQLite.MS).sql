-- SQLite.MS SQLite
SELECT
	INSTR([p].[FirstName], 'o') * 2
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

