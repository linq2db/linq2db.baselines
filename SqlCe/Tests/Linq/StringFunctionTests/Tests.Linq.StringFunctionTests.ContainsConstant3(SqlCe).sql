BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

