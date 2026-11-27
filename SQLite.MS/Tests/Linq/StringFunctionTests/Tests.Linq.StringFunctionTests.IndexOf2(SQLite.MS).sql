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
	INSTR(Substr([p].[LastName], 3), 'e') = 3 AND INSTR(Substr([p].[LastName], 3), 'e') <> 0 AND
	[p].[PersonID] = 2

