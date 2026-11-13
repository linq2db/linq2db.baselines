-- SqlServer.2019.MS SqlServer.2019
SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
ORDER BY
	[p].[Gender],
	[p].[PersonID]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

