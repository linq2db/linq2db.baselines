BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x_1].[Id],
	[x_1].[StatusName]
FROM
	(
		SELECT
			IIF((
				SELECT TOP 1
					[y].[PersonID]
				FROM
					[Patient] [y]
				WHERE
					[y].[PersonID] = [x].[PersonID]
			) IS NOT NULL, (
				SELECT TOP 1
					[y_1].[Diagnosis]
				FROM
					[Patient] [y_1]
				WHERE
					[y_1].[PersonID] = [x].[PersonID]
			), 'abc') as [StatusName],
			IIF((
				SELECT TOP 1
					[y].[PersonID]
				FROM
					[Patient] [y]
				WHERE
					[y].[PersonID] = [x].[PersonID]
			) IS NOT NULL, (
				SELECT TOP 1
					[y].[PersonID]
				FROM
					[Patient] [y]
				WHERE
					[y].[PersonID] = [x].[PersonID]
			), [x].[PersonID]) as [Id]
		FROM
			[Person] [x]
	) [x_1]
WHERE
	[x_1].[StatusName] = 'abc'

