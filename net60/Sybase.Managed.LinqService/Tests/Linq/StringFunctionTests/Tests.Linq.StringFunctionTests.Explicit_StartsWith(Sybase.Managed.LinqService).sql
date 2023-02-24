BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE 'hall%' ESCAPE '~'

