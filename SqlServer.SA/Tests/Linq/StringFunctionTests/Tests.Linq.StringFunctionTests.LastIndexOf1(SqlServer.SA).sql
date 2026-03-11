-- SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(LEN([p].[LastName] + N'.') - 1) - CharIndex(N'p', Reverse([p].[LastName])) = 2 AND
	CharIndex(N'p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

