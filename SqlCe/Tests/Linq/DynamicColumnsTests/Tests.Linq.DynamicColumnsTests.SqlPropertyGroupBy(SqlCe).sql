BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	Count(*) as [Count_1]
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

