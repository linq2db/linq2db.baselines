-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	CASE
		WHEN [c_1].[PersonID] IS NOT NULL THEN [c_1].[Diagnosis]
		ELSE NULL
	END
FROM
	[Person] [p]
		LEFT JOIN [Patient] [c_1] ON [c_1].[PersonID] = [p].[PersonID]

