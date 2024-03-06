BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

