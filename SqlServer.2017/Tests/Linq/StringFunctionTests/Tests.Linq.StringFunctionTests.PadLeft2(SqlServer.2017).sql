BeforeExecute
-- SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + IIF(LEN([p].[FirstName]) < 6, REPLICATE(N'*', 6 - LEN([p].[FirstName])) + [p].[FirstName], [p].[FirstName]) = N'123**John' AND
	[p].[PersonID] = 1

