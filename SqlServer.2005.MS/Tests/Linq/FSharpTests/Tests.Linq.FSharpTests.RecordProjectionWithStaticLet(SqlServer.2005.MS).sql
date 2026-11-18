-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] = N'Pupkin' AND [p].[FirstName] = N'John'

