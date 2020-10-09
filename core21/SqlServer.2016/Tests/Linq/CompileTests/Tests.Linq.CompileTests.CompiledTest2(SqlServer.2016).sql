BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1

SELECT TOP (@p1) 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID_1

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 2
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2

SELECT TOP (@p1) 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID_1

