BeforeExecute
-- SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(N'oh', [p].[FirstName]) - 1 = 1 AND [p].[PersonID] = 1

