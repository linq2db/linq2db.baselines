-- SQLite.MS SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[MiddleName], 2), 'o') = 0 THEN 0
		ELSE INSTR(Substr([p].[MiddleName], 2), 'o') + 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], 2), [p].[MiddleName]) = 0
			THEN 0
		ELSE INSTR(Substr([p].[FirstName], 2), [p].[MiddleName]) + 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], 2), CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 'o'
		END) = 0
			THEN 0
		ELSE INSTR(Substr([p].[FirstName], 2), CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 'o'
		END) + 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END), 'o') = 0
			THEN 0
		ELSE INSTR(Substr([p].[FirstName], CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END), 'o') + CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END - 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NULL
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
DECLARE @start Integer -- Int32
SET     @start = 1

SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], @start), 'o') = 0 THEN 0
		ELSE INSTR(Substr([p].[FirstName], @start), 'o') + @start - 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
DECLARE @nullValuedStart Integer -- Int32
SET     @nullValuedStart = NULL

SELECT
	CASE
		WHEN INSTR(Substr([p].[FirstName], @nullValuedStart), 'o') = 0
			THEN 0
		ELSE INSTR(Substr([p].[FirstName], @nullValuedStart), 'o') + @nullValuedStart - 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

