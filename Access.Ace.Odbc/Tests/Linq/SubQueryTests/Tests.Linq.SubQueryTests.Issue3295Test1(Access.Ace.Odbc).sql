-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
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
			) as [Diagnosis]
		FROM
			[Person] [x]
	) [t1]
WHERE
	[t1].[PersonID] IS NULL OR [t1].[Diagnosis] = 'abc'

