﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_2].[Id],
	[x_2].[StatusName]
FROM
	(
		SELECT
			IIF([x_1].[PersonID] IS NOT NULL, [x_1].[c1], 'abc') as [StatusName],
			IIF([x_1].[PersonID] IS NOT NULL, [x_1].[PersonID], [x_1].[PersonID_1]) as [Id]
		FROM
			(
				SELECT
					(
						SELECT TOP 1
							[y].[PersonID]
						FROM
							[Patient] [y]
						WHERE
							[y].[PersonID] = [x].[PersonID]
					) as [PersonID],
					(
						SELECT TOP 1
							[y_1].[Diagnosis]
						FROM
							[Patient] [y_1]
						WHERE
							[y_1].[PersonID] = [x].[PersonID]
					) as [c1],
					[x].[PersonID] as [PersonID_1]
				FROM
					[Person] [x]
			) [x_1]
	) [x_2]
WHERE
	[x_2].[StatusName] = 'abc' AND [x_2].[StatusName] IS NOT NULL

