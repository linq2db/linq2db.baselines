BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

