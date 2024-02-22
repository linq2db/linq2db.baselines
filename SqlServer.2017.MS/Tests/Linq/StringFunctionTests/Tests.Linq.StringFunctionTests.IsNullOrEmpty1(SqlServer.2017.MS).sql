BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NOT NULL AND (Len([p].[FirstName]) <> 0 OR Len([p].[FirstName]) IS NULL) AND
	[p].[PersonID] = 1

