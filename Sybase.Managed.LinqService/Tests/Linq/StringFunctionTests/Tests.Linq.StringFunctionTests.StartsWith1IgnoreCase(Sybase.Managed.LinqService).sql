BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE 'joh%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE 'joh%' ESCAPE '~' AND
	[p].[PersonID] = 1

