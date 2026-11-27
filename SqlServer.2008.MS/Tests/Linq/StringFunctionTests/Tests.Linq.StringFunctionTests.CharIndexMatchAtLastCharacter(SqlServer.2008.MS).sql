-- SqlServer.2008.MS SqlServer.2008
SELECT
	CharIndex(N'n', [p].[FirstName], 2)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

