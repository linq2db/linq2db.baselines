BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]

