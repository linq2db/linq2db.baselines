-- SqlCe

SELECT
	[p].[FirstName] as [Key_1],
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

