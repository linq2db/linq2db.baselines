-- SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [Patient] [pa] ON [p].[FirstName] = [pa].[Diagnosis]

