-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Coalesce([p].[MiddleName], N'None') = N'None' AND
	[p].[FirstName] = N'John'

