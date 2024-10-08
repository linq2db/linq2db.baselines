BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x_1].[Id],
	[x_1].[StatusName]
FROM
	(
		SELECT
			CASE
				WHEN [t1].[StatusName] IS NOT NULL THEN [t1].[Diagnosis]
				ELSE 'abc'
			END as [StatusName],
			CASE
				WHEN [t1].[StatusName] IS NOT NULL THEN [t1].[PersonID]
				ELSE [x].[PersonID]
			END as [Id]
		FROM
			[Person] [x]
				LEFT JOIN (
					SELECT
						[y].[PersonID] as [StatusName],
						[y].[Diagnosis],
						[y].[PersonID],
						ROW_NUMBER() OVER (PARTITION BY [y].[PersonID] ORDER BY [y].[PersonID]) as [rn]
					FROM
						[Patient] [y]
				) [t1] ON [t1].[PersonID] = [x].[PersonID] AND [t1].[rn] <= 1
	) [x_1]
WHERE
	[x_1].[StatusName] = 'abc'

