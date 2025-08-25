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
	LeftStr([p].[FirstName], 2) || '123' || RightStr([p].[FirstName], Length([p].[FirstName]) - 3) = 'Jo123n' AND
	[p].[PersonID] = 1

