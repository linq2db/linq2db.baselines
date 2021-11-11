BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[PersonID],
	[pp].[FirstName],
	[pp].[PersonID],
	[pp].[LastName],
	[pp].[MiddleName],
	[pp].[Gender]
FROM
	[Person] [p]
		LEFT JOIN [Person] [pp] ON [pp].[PersonID] + 1 = [p].[PersonID]

