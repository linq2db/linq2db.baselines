-- Sybase.Managed Sybase

SELECT TOP 2
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE 'joh%' ESCAPE '~' AND [p].[PersonID] = 1

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE 'joh%' ESCAPE '~' AND
	[p].[PersonID] = 1

