-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	INSTR([p].[FirstName], 'x') - 1
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	INSTR([p].[FirstName], 'x') - 1
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @c NChar -- StringFixedLength
SET     @c = 'o'

SELECT
	INSTR([p].[FirstName], @c) - 1
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @c NChar -- StringFixedLength
SET     @c = 'o'

SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], 2), @c) = 0 THEN 0
		ELSE INSTR(Substr([p].[FirstName], 2), @c) + 1
	END - 1
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

