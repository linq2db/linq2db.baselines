BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x_1].[Id],
	[x_1].[StatusName]
FROM
	(
		SELECT
			IIF([t1].[PersonID] IS NOT NULL, [t1].[Diagnosis], N'abc') as [StatusName],
			IIF([t1].[PersonID] IS NOT NULL, [t1].[PersonID_1], [x].[PersonID]) as [Id]
		FROM
			[Person] [x]
				OUTER APPLY (
					SELECT TOP (1)
						[y].[PersonID],
						[y].[Diagnosis],
						[y].[PersonID] as [PersonID_1]
					FROM
						[Patient] [y]
					WHERE
						[y].[PersonID] = [x].[PersonID]
				) [t1]
	) [x_1]
WHERE
	[x_1].[StatusName] = N'abc'

