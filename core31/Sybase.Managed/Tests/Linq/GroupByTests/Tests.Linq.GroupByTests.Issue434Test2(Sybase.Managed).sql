BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE '%test%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE '%test%' ESCAPE '~'

