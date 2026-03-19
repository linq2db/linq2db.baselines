-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis],
	[p2].[PersonID],
	[p2].[Diagnosis],
	[p3].[FirstName],
	[p3].[PersonID],
	[p3].[LastName],
	[p3].[MiddleName],
	[p3].[Gender]
FROM
	[Patient] [t1]
		INNER JOIN [Patient] [p2] ON [t1].[Diagnosis] = [p2].[Diagnosis] OR [t1].[Diagnosis] IS NULL AND [p2].[Diagnosis] IS NULL
		INNER JOIN [Person] [p3] ON [p2].[PersonID] = [p3].[PersonID]

