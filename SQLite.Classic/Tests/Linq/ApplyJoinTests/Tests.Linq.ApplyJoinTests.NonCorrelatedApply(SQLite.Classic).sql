-- SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[c_1].[Diagnosis]
FROM
	[Person] [p]
		CROSS JOIN [Patient] [c_1]

