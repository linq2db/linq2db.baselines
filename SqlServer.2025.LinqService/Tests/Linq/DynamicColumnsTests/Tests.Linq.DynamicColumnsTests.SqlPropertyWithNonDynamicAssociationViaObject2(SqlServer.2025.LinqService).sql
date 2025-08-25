BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[a_Patient].[Diagnosis]
FROM
	[Person] [x]
		LEFT JOIN [Patient] [a_Patient] ON [x].[PersonID] = [a_Patient].[PersonID]

