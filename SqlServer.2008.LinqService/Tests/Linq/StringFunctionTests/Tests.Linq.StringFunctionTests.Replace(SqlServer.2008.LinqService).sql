BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Replace([p].[FirstName], N'hn', N'lie') = N'Jolie' AND
	[p].[PersonID] = 1

