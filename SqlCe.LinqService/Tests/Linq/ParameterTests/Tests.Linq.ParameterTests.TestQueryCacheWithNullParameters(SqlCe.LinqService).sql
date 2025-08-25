BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [t1]
WHERE
	1 = 0

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

