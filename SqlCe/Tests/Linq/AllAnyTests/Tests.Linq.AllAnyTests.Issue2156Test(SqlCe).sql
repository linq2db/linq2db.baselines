-- SqlCe

SELECT DISTINCT
	[i].[FirstName],
	[i].[PersonID] as [ID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[u].[FirstName] as [FirstName_1],
	[u].[PersonID] as [ID_1],
	[u].[LastName] as [LastName_1],
	[u].[MiddleName] as [MiddleName_1],
	[u].[Gender] as [Gender_1],
	[i].[FirstName] as [FirstName_2],
	[i].[PersonID] as [ID_2],
	[i].[LastName] as [LastName_2],
	[i].[MiddleName] as [MiddleName_2],
	[i].[Gender] as [Gender_2],
	[i].[FirstName] as [FirstName_3],
	[i].[PersonID] as [ID_3],
	[i].[LastName] as [LastName_3],
	[i].[MiddleName] as [MiddleName_3],
	[i].[Gender] as [Gender_3],
	[e_1].[FirstName] as [FirstName_4],
	[e_1].[ID] as [ID_4],
	[e_1].[LastName] as [LastName_4],
	[e_1].[MiddleName] as [MiddleName_4],
	[e_1].[Gender] as [Gender_4],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [tg]
			WHERE
				[t].[PersonID] = [tg].[PersonID] AND [tg].[FirstName] = 'John'
		)
			THEN 1
		ELSE 0
	END as [IsHoliday]
FROM
	[Person] [i]
		LEFT JOIN [Patient] [a_Patient] ON [i].[PersonID] = [a_Patient].[PersonID]
		LEFT JOIN [Person] [t] ON [i].[PersonID] = [t].[PersonID] AND [t].[FirstName] <> 'Nameless One'
		LEFT JOIN [Person] [u] ON [i].[PersonID] = [u].[PersonID]
		OUTER APPLY (
			SELECT TOP (1)
				[e].[FirstName],
				[e].[PersonID] as [ID],
				[e].[LastName],
				[e].[MiddleName],
				[e].[Gender]
			FROM
				[Person] [e]
			WHERE
				[u].[PersonID] = [e].[PersonID]
		) [e_1]
WHERE
	[a_Patient].[Diagnosis] <> 'Immortality' OR [a_Patient].[Diagnosis] IS NULL
ORDER BY
	[u].[PersonID]

