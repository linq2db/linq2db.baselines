-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		WHEN CHARINDEX('o', Substring([p].[MiddleName], 2, Len([p].[MiddleName]))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring([p].[MiddleName], 2, Len([p].[MiddleName]))) + 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		WHEN CHARINDEX([p].[MiddleName], Substring([p].[FirstName], 2, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX([p].[MiddleName], Substring([p].[FirstName], 2, Len([p].[FirstName]))) + 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		WHEN CHARINDEX(CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 'o'
		END, Substring([p].[FirstName], 2, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX(CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 'o'
		END, Substring([p].[FirstName], 2, Len([p].[FirstName]))) + 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		WHEN CHARINDEX('o', Substring([p].[FirstName], CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring([p].[FirstName], CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END, Len([p].[FirstName]))) + CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 1
		END - 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NULL
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
DECLARE @start Integer -- Int32
SET     @start = 1

SELECT
	CASE
		WHEN CHARINDEX('o', Substring([p].[FirstName], @start, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring([p].[FirstName], @start, Len([p].[FirstName]))) + @start - 1
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
SELECT
	NULL
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

