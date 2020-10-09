BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR Length([nm].[MiddleName]) = 0)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

