-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

