BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[x_1].[Id],
	[x_1].[StatusName]
FROM
	(
		SELECT
			CASE
				WHEN [t1].[PersonID] IS NOT NULL THEN [t1].[Diagnosis]
				ELSE N'abc'
			END as [StatusName],
			CASE
				WHEN [t1].[PersonID] IS NOT NULL THEN [t1].[PersonID]
				ELSE [x].[PersonID]
			END as [Id]
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

