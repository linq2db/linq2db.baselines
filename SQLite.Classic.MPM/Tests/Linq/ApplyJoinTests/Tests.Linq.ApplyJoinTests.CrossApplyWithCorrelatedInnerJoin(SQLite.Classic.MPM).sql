-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[x].[Diagnosis],
	[p].[FirstName]
FROM
	[Person] [p]
		INNER JOIN [Patient] [x] ON [x].[PersonID] = [p].[PersonID]

