-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] = N'Pupkin' AND [p].[FirstName] = N'John'

