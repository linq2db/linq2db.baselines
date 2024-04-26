BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	MAX([c_1].[ParentID]) as [MAX_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	MAX([c_1].[ParentID]) as [MAX_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

