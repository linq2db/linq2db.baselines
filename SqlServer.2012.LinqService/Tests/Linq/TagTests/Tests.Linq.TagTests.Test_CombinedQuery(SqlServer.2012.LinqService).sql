BeforeExecute
-- SqlServer.2012

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
	[p].[FirstName] = N'a' AND [p].[LastName] = N'a'

