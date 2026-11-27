-- SqlServer.2019
SELECT
	IIF(CharIndex(N'x', [p].[FirstName], 2) = 0, -1, (LEN([p].[FirstName] + N'.') - 1) - CharIndex(N'x', Reverse(Substring([p].[FirstName], 2, LEN([p].[FirstName] + N'.') - 2))))
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

