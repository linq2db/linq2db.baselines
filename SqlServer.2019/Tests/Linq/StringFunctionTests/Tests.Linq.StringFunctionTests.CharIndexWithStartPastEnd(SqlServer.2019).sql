-- SqlServer.2019
SELECT
	CharIndex(N'x', [p].[FirstName], 10)
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2019
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

