-- SqlCe

SELECT
	[g_1].[FirstName] as [Key_1],
	COUNT(*) as [COUNT_1]
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]
ORDER BY
	[g_1].[FirstName]

