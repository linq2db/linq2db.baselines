-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE '%paranoid%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE '%paranoid%' ESCAPE '~'

