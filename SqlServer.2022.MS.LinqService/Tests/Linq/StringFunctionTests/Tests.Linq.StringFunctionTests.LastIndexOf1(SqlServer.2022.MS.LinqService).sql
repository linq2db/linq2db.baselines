BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

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

