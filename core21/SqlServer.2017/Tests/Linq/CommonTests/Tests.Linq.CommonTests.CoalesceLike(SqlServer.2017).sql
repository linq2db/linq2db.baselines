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
-- SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(IIF([p].[FirstName] IS NULL, NULL, IIF([p].[FirstName] LIKE N'Jo%', 1, 0)) IS NULL, 0, IIF([p].[FirstName] IS NULL, NULL, IIF([p].[FirstName] LIKE N'Jo%', 1, 0))) = 1

