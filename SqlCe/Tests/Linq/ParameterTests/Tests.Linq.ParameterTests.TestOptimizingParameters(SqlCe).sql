-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id OR [t1].[PersonID] <= @id

