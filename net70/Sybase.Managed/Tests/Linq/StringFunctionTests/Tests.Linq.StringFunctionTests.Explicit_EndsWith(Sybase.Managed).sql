BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE '%persecution' ESCAPE '~'

