-- SqlServer.2016.MS SqlServer.2016
SELECT
	CharIndex(N'J', [p].[FirstName], 1)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

