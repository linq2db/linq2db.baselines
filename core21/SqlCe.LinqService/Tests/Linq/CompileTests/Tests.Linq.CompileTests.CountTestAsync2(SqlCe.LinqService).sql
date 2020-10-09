BeforeExecute
-- SqlCe (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT 
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT 
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

