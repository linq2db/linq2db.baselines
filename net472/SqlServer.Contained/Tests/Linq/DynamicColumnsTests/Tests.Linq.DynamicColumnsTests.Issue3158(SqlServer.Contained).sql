BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p].[PersonID],
	[pa].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Doctor] [d] ON [p].[PersonID] = [d].[PersonID]
		LEFT JOIN [Patient] [pa] ON [pa].[Diagnosis] = [p].[FirstName]

