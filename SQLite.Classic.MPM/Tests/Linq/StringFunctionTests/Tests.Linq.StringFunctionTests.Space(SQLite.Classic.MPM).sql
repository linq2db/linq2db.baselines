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
	[p].[FirstName] || REPLACE(HEX(ZEROBLOB(([p].[PersonID] + 1))), '00', ' ') || '123' = 'John  123' AND
	[p].[PersonID] = 1

