BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE 'hall%' ESCAPE '~'

