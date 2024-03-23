BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	Count(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	Count(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

