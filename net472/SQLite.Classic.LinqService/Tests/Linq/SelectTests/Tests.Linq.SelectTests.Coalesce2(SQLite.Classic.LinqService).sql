BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	Coalesce([p].[MiddleName], Coalesce([p].[FirstName], 'None')),
	Coalesce([p].[LastName], Coalesce([p].[FirstName], 'None')),
	Coalesce([p].[MiddleName], Coalesce([p].[MiddleName], 'None'))
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

