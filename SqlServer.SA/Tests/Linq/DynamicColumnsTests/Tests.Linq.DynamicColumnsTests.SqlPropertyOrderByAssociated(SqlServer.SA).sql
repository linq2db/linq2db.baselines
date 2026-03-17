-- SqlServer.SA SqlServer.2019

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
		LEFT JOIN [Patient] [a_Patient] ON [x].[PersonID] = [a_Patient].[PersonID]
ORDER BY
	[a_Patient].[Diagnosis]

