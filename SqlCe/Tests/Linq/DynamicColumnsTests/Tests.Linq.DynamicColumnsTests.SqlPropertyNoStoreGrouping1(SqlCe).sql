BeforeExecute
-- SqlCe

SELECT
	[g_1].[FirstName],
	Count(*) as [Count_1]
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]
ORDER BY
	[g_1].[FirstName]

