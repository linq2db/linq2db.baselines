BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE '%paranoid%' ESCAPE '~'

