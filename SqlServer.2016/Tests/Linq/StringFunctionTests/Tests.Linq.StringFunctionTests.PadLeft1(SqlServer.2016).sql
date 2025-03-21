BeforeExecute
-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + IIF(LEN([p].[FirstName] + N'.') < 7, REPLICATE(N' ', 6 - (LEN([p].[FirstName] + N'.') - 1)) + [p].[FirstName], [p].[FirstName]) = N'123  John' AND
	[p].[PersonID] = 1

