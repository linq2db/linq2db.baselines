BeforeExecute
-- SqlCe

SELECT 
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

BeforeExecute
-- SqlCe
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1

SELECT 
	[keyParam].[ParentID], 
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID_1

