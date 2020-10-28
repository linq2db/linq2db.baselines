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
	CharIndex(N'e', [p].[LastName], 3) - 1 = 4 AND [p].[PersonID] = 2

