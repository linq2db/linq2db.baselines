BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[PersonID],
	[pa].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [pa] ON [pa].[Diagnosis] = [p].[FirstName]

