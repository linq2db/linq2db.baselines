BeforeExecute
-- SqlCe
DECLARE @personId Int -- Int32
SET     @personId = 1

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId

BeforeExecute
-- SqlCe
DECLARE @personId Int -- Int32
SET     @personId = 1
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId_1

