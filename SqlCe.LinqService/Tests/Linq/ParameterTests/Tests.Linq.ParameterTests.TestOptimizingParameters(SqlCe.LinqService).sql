BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [_]
WHERE
	([_].[PersonID] = @id OR [_].[PersonID] <= @id OR [_].[PersonID] = @id)

