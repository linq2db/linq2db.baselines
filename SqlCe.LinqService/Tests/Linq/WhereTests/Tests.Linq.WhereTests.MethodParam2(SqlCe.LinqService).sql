BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[PersonID] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

