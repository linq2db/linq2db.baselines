-- SqlServer.2005.MS SqlServer.2005
SELECT
	[g_2].[Key_1],
	[g_2].[Sum_2],
	[g_2].[Length_1]
FROM
	(
		SELECT
			[g_1].[FirstName] as [Key_1],
			SUM([g_1].[PersonID]) as [Sum_1],
			SUM([g_1].[PersonID]) as [Sum_2],
			SUM(Len([g_1].[LastName])) as [Length_1]
		FROM
			[Person] [g_1]
		GROUP BY
			[g_1].[FirstName]
	) [g_2]
WHERE
	[g_2].[Sum_1] NOT BETWEEN 2 AND 3

