BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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

