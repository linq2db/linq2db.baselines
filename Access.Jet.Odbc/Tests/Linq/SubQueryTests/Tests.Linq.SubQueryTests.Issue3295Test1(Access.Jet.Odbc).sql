-- Access.Jet.Odbc AccessODBC

SELECT
	[x_1].[Id],
	[x_1].[StatusName]
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[y].[Diagnosis]
				FROM
					[Patient] [y]
				WHERE
					[y].[PersonID] = [x].[PersonID]
			) as [StatusName],
			(
				SELECT TOP 1
					[y_1].[PersonID]
				FROM
					[Patient] [y_1]
				WHERE
					[y_1].[PersonID] = [x].[PersonID]
			) as [Id]
		FROM
			[Person] [x]
	) [x_1]
WHERE
	[x_1].[StatusName] = 'abc'

