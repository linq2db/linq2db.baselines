BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[PersonID]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET @skip ROWS

