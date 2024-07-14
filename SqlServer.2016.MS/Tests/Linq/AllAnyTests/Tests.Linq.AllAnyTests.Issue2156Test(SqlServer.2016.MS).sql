﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[FirstName_2],
	[t1].[ID_2],
	[t1].[LastName_2],
	[t1].[MiddleName_2],
	[t1].[Gender_2],
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
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
	[t1].[FirstName_1],
	[t1].[ID_1],
	[t1].[LastName_1],
	[t1].[MiddleName_1],
	[t1].[Gender_1],
	[t1].[IsHoliday]
FROM
	(
		SELECT DISTINCT
			[u].[FirstName],
			[u].[PersonID] as [ID],
			[u].[LastName],
			[u].[MiddleName],
			[u].[Gender],
			[e_1].[FirstName] as [FirstName_1],
			[e_1].[ID] as [ID_1],
			[e_1].[LastName] as [LastName_1],
			[e_1].[MiddleName] as [MiddleName_1],
			[e_1].[Gender] as [Gender_1],
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
			[i].[FirstName] as [FirstName_4],
			[i].[PersonID] as [ID_4],
			[i].[LastName] as [LastName_4],
			[i].[MiddleName] as [MiddleName_4],
			[i].[Gender] as [Gender_4],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Person] [tg]
				WHERE
					[t].[PersonID] = [tg].[PersonID] AND [tg].[FirstName] = N'John'
			), 1, 0) as [IsHoliday]
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
			([a_Patient].[Diagnosis] <> N'Immortality' OR [a_Patient].[Diagnosis] IS NULL)
	) [t1]
ORDER BY
	[t1].[ID]

