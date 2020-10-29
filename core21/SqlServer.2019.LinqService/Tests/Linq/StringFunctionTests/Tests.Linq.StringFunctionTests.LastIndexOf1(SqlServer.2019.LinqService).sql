BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(CharIndex(N'p', [p].[LastName]) = 0, -1, Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName]))) = 2 AND
	[p].[PersonID] = 1

