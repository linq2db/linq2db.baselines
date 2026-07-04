-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[u].[FirstName] as [FirstName_1],
	[u].[PersonID] as [ID_1],
	[u].[LastName] as [LastName_1],
	[u].[MiddleName] as [MiddleName_1],
	[u].[Gender] as [Gender_1],
	[u].[FirstName] as [FirstName_2],
	[u].[PersonID] as [ID_2],
	[u].[LastName] as [LastName_2],
	[u].[MiddleName] as [MiddleName_2],
	[u].[Gender] as [Gender_2],
	[u].[FirstName] as [FirstName_3],
	[u].[PersonID] as [ID_3],
	[u].[LastName] as [LastName_3],
	[u].[MiddleName] as [MiddleName_3],
	[u].[Gender] as [Gender_3],
	(
		SELECT TOP 1
			[e].[FirstName]
		FROM
			[Person] [e]
		WHERE
			[u].[PersonID] = [e].[PersonID]
	) as [FirstName_4],
	(
		SELECT TOP 1
			[e_1].[PersonID]
		FROM
			[Person] [e_1]
		WHERE
			[u].[PersonID] = [e_1].[PersonID]
	) as [ID],
	(
		SELECT TOP 1
			[e_2].[LastName]
		FROM
			[Person] [e_2]
		WHERE
			[u].[PersonID] = [e_2].[PersonID]
	) as [LastName_4],
	(
		SELECT TOP 1
			[e_3].[MiddleName]
		FROM
			[Person] [e_3]
		WHERE
			[u].[PersonID] = [e_3].[PersonID]
	) as [MiddleName_4],
	(
		SELECT TOP 1
			[e_4].[Gender]
		FROM
			[Person] [e_4]
		WHERE
			[u].[PersonID] = [e_4].[PersonID]
	) as [Gender_4],
	EXISTS(
		SELECT
			*
		FROM
			[Person] [tg]
		WHERE
			[t].[PersonID] = [tg].[PersonID] AND [tg].[FirstName] = 'John'
	) as [IsHoliday]
FROM
	(([Person] [i]
		LEFT JOIN [Patient] [a_Patient] ON ([i].[PersonID] = [a_Patient].[PersonID]))
		LEFT JOIN [Person] [t] ON ([i].[PersonID] = [t].[PersonID] AND [t].[FirstName] <> 'Nameless One'))
		LEFT JOIN [Person] [u] ON ([i].[PersonID] = [u].[PersonID])
WHERE
	[a_Patient].[Diagnosis] <> 'Immortality' OR [a_Patient].[Diagnosis] IS NULL
ORDER BY
	[u].[PersonID]

