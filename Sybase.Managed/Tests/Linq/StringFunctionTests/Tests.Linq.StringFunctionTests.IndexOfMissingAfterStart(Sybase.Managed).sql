-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('x', Substring([p].[FirstName], 2, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('x', Substring([p].[FirstName], 2, Len([p].[FirstName]))) + 1
	END - 1
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
		WHEN CHARINDEX('x', Substring([p].[FirstName], 2, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('x', Substring([p].[FirstName], 2, Len([p].[FirstName]))) + 1
	END - 1
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
		WHEN CHARINDEX('x', Substring([p].[FirstName], CHAR_LENGTH([p].[FirstName]) + 1, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('x', Substring([p].[FirstName], CHAR_LENGTH([p].[FirstName]) + 1, Len([p].[FirstName]))) + CHAR_LENGTH([p].[FirstName])
	END - 1
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

