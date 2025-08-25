BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substr([p].[FirstName], 2, Length([p].[FirstName]) - 1) = 'ohn' AND
	[p].[PersonID] = 1

