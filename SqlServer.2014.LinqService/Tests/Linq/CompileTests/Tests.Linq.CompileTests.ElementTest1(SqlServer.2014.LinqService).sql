BeforeExecute
-- SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT TOP (1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT TOP (1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

