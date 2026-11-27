-- SQLite.MS SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	INSTR(Substr([p].[LastName], 2), 'p') = 2 AND INSTR(Substr([p].[LastName], 2), 'p') <> 0 AND
	[p].[PersonID] = 1

