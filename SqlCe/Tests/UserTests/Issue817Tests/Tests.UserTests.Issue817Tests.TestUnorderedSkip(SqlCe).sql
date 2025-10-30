BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[PersonID]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET @skip ROWS

