-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('r', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) = 0
			THEN 0
		ELSE CHARINDEX('r', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('n', Substring(Left([p].[LastName], 5), 3, Len(Left([p].[LastName], 5)))) = 0
			THEN 0
		ELSE CHARINDEX('n', Substring(Left([p].[LastName], 5), 3, Len(Left([p].[LastName], 5)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('o', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('o', Substring(Left([p].[LastName], 8), 3, Len(Left([p].[LastName], 8)))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring(Left([p].[LastName], 8), 3, Len(Left([p].[LastName], 8)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('r', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) = 0
			THEN 0
		ELSE CHARINDEX('r', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('o', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring(Left([p].[LastName], 7), 3, Len(Left([p].[LastName], 7)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('o', Substring(Left([p].[LastName], 8), 3, Len(Left([p].[LastName], 8)))) = 0
			THEN 0
		ELSE CHARINDEX('o', Substring(Left([p].[LastName], 8), 3, Len(Left([p].[LastName], 8)))) + 2
	END - 1
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 2

