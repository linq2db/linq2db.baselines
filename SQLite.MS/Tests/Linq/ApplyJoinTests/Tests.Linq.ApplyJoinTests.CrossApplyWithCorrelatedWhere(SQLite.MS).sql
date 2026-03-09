-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[c_1].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [c_1] ON [c_1].[PersonID] = [p].[PersonID]

