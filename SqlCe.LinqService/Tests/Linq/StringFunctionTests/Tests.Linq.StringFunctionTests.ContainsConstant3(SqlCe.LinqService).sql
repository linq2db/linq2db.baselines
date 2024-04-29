BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

