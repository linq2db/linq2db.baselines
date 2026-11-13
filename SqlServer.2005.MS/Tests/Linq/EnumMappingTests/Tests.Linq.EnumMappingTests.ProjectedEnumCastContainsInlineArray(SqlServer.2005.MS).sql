-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] IN ('F', 'O')

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

