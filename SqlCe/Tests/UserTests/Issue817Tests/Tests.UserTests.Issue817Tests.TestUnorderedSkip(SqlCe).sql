-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [t1]

-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1 as [c1]
FROM
	[Person] [t1]
ORDER BY
	[t1].[FirstName]
OFFSET @skip ROWS

