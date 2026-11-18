-- SqlServer.2017
SELECT
	[g_2].[FirstName],
	IIF([g_2].[FirstName] BETWEEN N'A' AND N'Jo', 1, 0),
	[g_2].[RowsInRange]
FROM
	(
		SELECT
			[g_1].[FirstName],
			SUM([g_1].[PersonID]) as [Sum_1],
			COUNT(IIF([g_1].[PersonID] BETWEEN 3 AND 4, 1, NULL)) as [RowsInRange]
		FROM
			[Person] [g_1]
		GROUP BY
			[g_1].[FirstName]
	) [g_2]
WHERE
	[g_2].[Sum_1] NOT BETWEEN 2 AND 2

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

