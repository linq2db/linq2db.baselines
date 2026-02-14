-- Access.Jet.Odbc AccessODBC

SELECT DISTINCT
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[u].[FirstName],
	[u].[PersonID],
	[u].[LastName],
	[u].[MiddleName],
	[u].[Gender],
	[u].[FirstName],
	[u].[PersonID],
	[u].[LastName],
	[u].[MiddleName],
	[u].[Gender],
	[u].[FirstName],
	[u].[PersonID],
	[u].[LastName],
	[u].[MiddleName],
	[u].[Gender],
	(
		SELECT TOP 1
			[e].[FirstName]
		FROM
			[Person] [e]
		WHERE
			[u].[PersonID] = [e].[PersonID]
	),
	(
		SELECT TOP 1
			[e_1].[PersonID] as [ID]
		FROM
			[Person] [e_1]
		WHERE
			[u].[PersonID] = [e_1].[PersonID]
	),
	(
		SELECT TOP 1
			[e_2].[LastName]
		FROM
			[Person] [e_2]
		WHERE
			[u].[PersonID] = [e_2].[PersonID]
	),
	(
		SELECT TOP 1
			[e_3].[MiddleName]
		FROM
			[Person] [e_3]
		WHERE
			[u].[PersonID] = [e_3].[PersonID]
	),
	(
		SELECT TOP 1
			[e_4].[Gender]
		FROM
			[Person] [e_4]
		WHERE
			[u].[PersonID] = [e_4].[PersonID]
	),
	EXISTS(
		SELECT
			*
		FROM
			[Person] [tg]
		WHERE
			[t].[PersonID] = [tg].[PersonID] AND [tg].[FirstName] = 'John'
	)
FROM
	(([Person] [i]
		LEFT JOIN [Patient] [a_Patient] ON ([i].[PersonID] = [a_Patient].[PersonID]))
		LEFT JOIN [Person] [t] ON ([i].[PersonID] = [t].[PersonID] AND [t].[FirstName] <> 'Nameless One'))
		LEFT JOIN [Person] [u] ON ([i].[PersonID] = [u].[PersonID])
WHERE
	[a_Patient].[Diagnosis] <> 'Immortality' OR [a_Patient].[Diagnosis] IS NULL
ORDER BY
	[u].[PersonID]

