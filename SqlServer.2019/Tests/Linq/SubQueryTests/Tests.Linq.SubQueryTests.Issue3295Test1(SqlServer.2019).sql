-- SqlServer.2019
SELECT
	IIF([t1].[PersonID] IS NOT NULL, [t1].[PersonID], [x].[PersonID]),
	IIF([t1].[PersonID] IS NOT NULL, [t1].[Diagnosis], N'abc')
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
	[t1].[PersonID] IS NULL OR [t1].[Diagnosis] = N'abc'

