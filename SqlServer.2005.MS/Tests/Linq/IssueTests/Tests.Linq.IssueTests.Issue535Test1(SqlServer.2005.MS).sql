BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	([p].[PersonID] = 1 OR [p].[LastName] = N'fail') AND
	[p].[FirstName] LIKE N'J%' ESCAPE N'~'

