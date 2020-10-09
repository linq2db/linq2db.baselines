BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[a_Patient].[Diagnosis], 
	Count(*)
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[a_Patient].[Diagnosis]

