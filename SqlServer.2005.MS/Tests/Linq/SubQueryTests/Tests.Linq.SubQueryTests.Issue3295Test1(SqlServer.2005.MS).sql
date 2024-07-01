BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
				LEFT JOIN (
					SELECT
						[y].[PersonID],
						[y].[Diagnosis],
						ROW_NUMBER() OVER (PARTITION BY [y].[PersonID] ORDER BY [y].[PersonID]) as [rn]
					FROM
						[Patient] [y]
				) [t1] ON [t1].[PersonID] = [x].[PersonID] AND [t1].[rn] <= 1
	) [x_1]
WHERE
	[x_1].[StatusName] = N'abc'

