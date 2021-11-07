BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	Coalesce([r].[FirstName] || '1', NULL) IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	Coalesce([r].[FirstName] || '1', NULL) IS NULL

