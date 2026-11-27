-- SqlServer.2005.MS SqlServer.2005
SELECT
	CharIndex(N'o', [p].[FirstName], 1) * 2
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

