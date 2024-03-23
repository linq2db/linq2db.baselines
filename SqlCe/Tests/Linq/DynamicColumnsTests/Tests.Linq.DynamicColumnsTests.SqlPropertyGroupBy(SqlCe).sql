BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

