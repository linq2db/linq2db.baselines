BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

/* query 1
query 2 */
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[LastName] = N'a' AND [p].[FirstName] = N'a'

