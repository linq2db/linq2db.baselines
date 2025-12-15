-- SqlServer.SA SqlServer.2019

SELECT
	IIF([a_Patient].[PersonID] IS NOT NULL, 1, 0)
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]

