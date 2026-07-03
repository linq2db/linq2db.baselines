-- SqlCe

SELECT
	[p].[FirstName],
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

