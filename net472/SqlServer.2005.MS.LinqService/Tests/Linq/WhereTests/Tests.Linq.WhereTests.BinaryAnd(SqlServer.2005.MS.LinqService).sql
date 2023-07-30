BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[PersonID] & 3) = 1

