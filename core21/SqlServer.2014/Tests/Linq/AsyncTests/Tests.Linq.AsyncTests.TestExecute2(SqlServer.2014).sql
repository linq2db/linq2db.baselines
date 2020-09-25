BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

-- SqlServer.2014 SqlServer.2012
SELECT TOP (1)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

