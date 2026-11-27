-- Sybase.Managed Sybase
SELECT
	CharIndex('x', [p].[FirstName]) - 1
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
	CharIndex('x', [p].[FirstName]) - 1
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
DECLARE @c UniChar -- StringFixedLength
SET     @c = 'o'

SELECT
	CharIndex(@c, [p].[FirstName]) - 1
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
DECLARE @c UniChar -- StringFixedLength
SET     @c = 'o'

SELECT
	CASE
		WHEN CHARINDEX(@c, Substring([p].[FirstName], 2, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX(@c, Substring([p].[FirstName], 2, Len([p].[FirstName]))) + 1
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

