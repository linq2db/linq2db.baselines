-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[RowNumber_2],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[RowNumber] ORDER BY [e].[RowNumber_1] DESC, [e].[RowNumber_2] DESC) as [RowNumber],
			[e].[RowNumber_1],
			[e].[RowNumber_2],
			[e].[Count_1]
		FROM
			(
				SELECT
					[g_2].[Length_1] as [RowNumber],
					IIF([g_2].[Key_1] LIKE N'J%' ESCAPE N'~', 1, 0) as [RowNumber_1],
					[g_2].[Key_1] as [RowNumber_2],
					COUNT(*) as [Count_1]
				FROM
					(
						SELECT
							[g_1].[FirstName] as [Key_1],
							LEN([g_1].[FirstName] || N'.') - 1 as [Length_1]
						FROM
							[Person] [g_1]
					) [g_2]
				GROUP BY
					[g_2].[Key_1],
					[g_2].[Length_1]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1] DESC,
	[t1].[RowNumber_2] DESC

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

