BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	Length([nm].[MiddleName]) <> 0 OR [nm].[MiddleName] IS NULL

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

