BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[x_1].[Id],
	[x_1].[StatusName]
FROM
	(
		SELECT
			IIF([t1].[PersonID] IS NOT NULL, [t1].[Diagnosis], N'abc') as [StatusName],
			IIF([t1].[PersonID] IS NOT NULL, [t1].[PersonID], [x].[PersonID]) as [Id]
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
	) [x_1]
WHERE
	[x_1].[StatusName] = N'abc'

