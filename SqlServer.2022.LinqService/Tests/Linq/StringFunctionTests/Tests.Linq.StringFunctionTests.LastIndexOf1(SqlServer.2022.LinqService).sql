BeforeExecute
-- SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName])) = 2 AND
	CharIndex(N'p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

