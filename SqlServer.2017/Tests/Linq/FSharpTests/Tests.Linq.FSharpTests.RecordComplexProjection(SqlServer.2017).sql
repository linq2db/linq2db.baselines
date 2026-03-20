-- SqlServer.2017

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] = N'John' AND
	[p].[LastName] = N'Pupkin'

