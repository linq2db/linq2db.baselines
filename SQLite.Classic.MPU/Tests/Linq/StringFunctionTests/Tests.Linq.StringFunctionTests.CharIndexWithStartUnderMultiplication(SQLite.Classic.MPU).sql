-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], 1), 'o') = 0 THEN 0
		ELSE INSTR(Substr([p].[FirstName], 1), 'o')
	END * 2
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

