-- SqlServer.Contained SqlServer.2025
SELECT
	CharIndex(N'o', [p].[FirstName]) * 2
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

