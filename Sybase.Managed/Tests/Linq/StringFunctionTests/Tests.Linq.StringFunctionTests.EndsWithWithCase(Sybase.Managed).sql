-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND
	[p].[PersonID] = 2

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] NOT LIKE '%Persecution' ESCAPE '~' AND
	[p].[PersonID] = 2

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND
	[p].[PersonID] = 2

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] NOT LIKE '%persecution' ESCAPE '~' AND
	[p].[PersonID] = 2

