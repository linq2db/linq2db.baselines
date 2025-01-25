BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%Joh%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%Joh%' ESCAPE '~' AND [p].[PersonID] = 1

