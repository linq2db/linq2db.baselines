-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'r') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'r') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 5), 3), 'n') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 5), 3), 'n') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'o') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'o') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 8), 3), 'o') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 8), 3), 'o') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'r') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'r') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'o') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 7), 3), 'o') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN INSTR(Substr(SUBSTRING([p].[LastName], 1, 8), 3), 'o') = 0
			THEN 0
		ELSE INSTR(Substr(SUBSTRING([p].[LastName], 1, 8), 3), 'o') + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

