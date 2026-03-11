-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
WHERE
	[p].[PersonID] = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
WHERE
	[p].[PersonID] = 2

