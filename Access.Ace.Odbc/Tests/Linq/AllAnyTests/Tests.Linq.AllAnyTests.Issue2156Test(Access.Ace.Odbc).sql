-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName_1],
	[t1].[ID_1],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName_1],
	[t1].[MiddleName_1],
	[t1].[Gender_1],
	[t1].[FirstName_2],
	[t1].[ID_2],
	[t1].[LastName_2],
	[t1].[MiddleName_2],
	[t1].[Gender_2],
	[t1].[FirstName_3],
	[t1].[ID_3],
	[t1].[LastName_3],
	[t1].[MiddleName_3],
	[t1].[Gender_3],
	[t1].[FirstName_4],
	[t1].[ID_4],
	[t1].[LastName_4],
	[t1].[MiddleName_4],
	[t1].[Gender_4],
	[t1].[IsHoliday]
FROM
	(
		SELECT DISTINCT
			[u].[PersonID] as [ID],
			[u].[FirstName],
			[i].[FirstName] as [FirstName_1],
			[i].[PersonID] as [ID_1],
			[i].[LastName],
			[i].[MiddleName],
			[i].[Gender],
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
			) as [ID_4],
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
	) [t1]
ORDER BY
	[t1].[ID]

