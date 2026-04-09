-- SqlCe

SELECT
	CASE
		WHEN [t1].[PersonID] IS NOT NULL THEN [t1].[PersonID]
		ELSE [x].[PersonID]
	END as [Id],
	CASE
		WHEN [t1].[PersonID] IS NOT NULL THEN [t1].[Diagnosis]
		ELSE 'abc'
	END as [StatusName]
FROM
	[Person] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[y].[PersonID],
				[y].[Diagnosis]
			FROM
				[Patient] [y]
			WHERE
				[y].[PersonID] = [x].[PersonID]
		) [t1]
WHERE
	[t1].[PersonID] IS NULL OR [t1].[Diagnosis] = 'abc'

