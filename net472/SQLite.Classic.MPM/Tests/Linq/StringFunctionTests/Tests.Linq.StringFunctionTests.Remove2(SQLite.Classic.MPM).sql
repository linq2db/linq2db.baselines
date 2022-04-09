BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LeftStr([p].[FirstName], 1) || RightStr([p].[FirstName], Length([p].[FirstName]) - 3) = 'Jn' AND
	[p].[PersonID] = 1

