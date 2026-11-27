-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE CHARINDEX('o', [p].[MiddleName])
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
		ELSE CHARINDEX([p].[MiddleName], [p].[FirstName])
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
		ELSE CHARINDEX(CASE
			WHEN [p].[MiddleName] IS NULL THEN NULL
			ELSE 'o'
		END, [p].[FirstName])
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
	CHARINDEX('o', [p].[MiddleName]) = 0 AND [p].[MiddleName] IS NOT NULL
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

