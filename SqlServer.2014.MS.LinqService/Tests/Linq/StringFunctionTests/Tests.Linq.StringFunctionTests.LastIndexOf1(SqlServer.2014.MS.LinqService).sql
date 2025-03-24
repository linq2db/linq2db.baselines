BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName]))) - Len(N'p') = 1 AND
	CharIndex(N'p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

