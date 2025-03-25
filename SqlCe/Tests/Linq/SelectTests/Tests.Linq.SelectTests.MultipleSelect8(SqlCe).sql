BeforeExecute
-- SqlCe

SELECT
	([p2].[PersonID] * 2) / (LEN('22.') - 1) as [c1],
	[p2].[FirstName]
FROM
	[Person] [p2]

