BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[a_Patient].[Diagnosis],
	COUNT(*)
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
GROUP BY
	[a_Patient].[Diagnosis]

