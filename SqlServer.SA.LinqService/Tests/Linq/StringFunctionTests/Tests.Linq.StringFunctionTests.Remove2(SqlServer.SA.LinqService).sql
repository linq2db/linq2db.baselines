BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Stuff([p].[FirstName], 2, 2, N'') = N'Jn' AND [p].[PersonID] = 1

