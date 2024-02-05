BeforeExecute
-- SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(N'e', [p].[LastName], 3) = 5 AND [p].[PersonID] = 2

