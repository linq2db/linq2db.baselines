BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

