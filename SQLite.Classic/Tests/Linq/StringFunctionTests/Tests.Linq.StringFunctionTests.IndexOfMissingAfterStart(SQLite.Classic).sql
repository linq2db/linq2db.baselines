-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], 2), 'x') = 0 THEN 0
		ELSE INSTR(Substr([p].[FirstName], 2), 'x') + 1
	END - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], 2), 'x') = 0 THEN 0
		ELSE INSTR(Substr([p].[FirstName], 2), 'x') + 1
	END - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], Length([p].[FirstName]) + 1), 'x') = 0
			THEN 0
		ELSE INSTR(Substr([p].[FirstName], Length([p].[FirstName]) + 1), 'x') + Length([p].[FirstName])
	END - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

