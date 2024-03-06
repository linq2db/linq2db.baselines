BeforeExecute
-- SqlCe

SELECT
	[g_1].[FirstName],
	[g_1].[LastName],
	Count(*) as [Count_1]
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName],
	[g_1].[LastName]
ORDER BY
	[g_1].[FirstName]

