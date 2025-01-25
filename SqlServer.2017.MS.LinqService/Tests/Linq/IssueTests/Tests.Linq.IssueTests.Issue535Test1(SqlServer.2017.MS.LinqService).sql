BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'J%' ESCAPE N'~' AND ([p].[PersonID] = 1 OR [p].[LastName] = N'fail')

