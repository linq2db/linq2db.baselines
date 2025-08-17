BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @filter1 UniVarChar(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 UniVarChar(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e],
			(
				SELECT TOP 1
					[d].[PersonID] as [cond]
				FROM
					[Patient] [d]
			) [t2]
		WHERE
			[e].[FirstName] LIKE @filter1 ESCAPE '~' AND [e].[PersonID] = [t2].[cond]
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e_1],
			(
				SELECT TOP 1
					[d_1].[PersonID] as [cond]
				FROM
					[Patient] [d_1]
			) [t3]
		WHERE
			[e_1].[FirstName] LIKE @filter2 ESCAPE '~' AND [e_1].[PersonID] = [t3].[cond]
	)
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

