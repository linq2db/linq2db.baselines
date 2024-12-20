BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' LIKE '%n%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' NOT LIKE '%n%' ESCAPE '~'

