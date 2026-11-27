-- SqlServer.2008
SELECT
	CASE
		WHEN CharIndex(N'x', [p].[FirstName], 2) = 0 THEN -1
		ELSE (LEN([p].[FirstName] + N'.') - 1) - CharIndex(N'x', Reverse(Substring([p].[FirstName], 2, LEN([p].[FirstName] + N'.') - 2)))
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2008
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

