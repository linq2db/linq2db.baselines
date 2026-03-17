-- SqlServer.2005.MS SqlServer.2005

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
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[e_1].[FirstName],
	[e_1].[ID],
	[e_1].[LastName],
	[e_1].[MiddleName],
	[e_1].[Gender],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [tg]
			WHERE
				[t].[PersonID] = [tg].[PersonID] AND [tg].[FirstName] = N'John'
		)
			THEN 1
		ELSE 0
	END
FROM
	[Person] [i]
		LEFT JOIN [Patient] [a_Patient] ON [i].[PersonID] = [a_Patient].[PersonID]
		LEFT JOIN [Person] [t] ON [i].[PersonID] = [t].[PersonID] AND [t].[FirstName] <> N'Nameless One'
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
	[a_Patient].[Diagnosis] <> N'Immortality' OR [a_Patient].[Diagnosis] IS NULL
ORDER BY
	[u].[PersonID]

