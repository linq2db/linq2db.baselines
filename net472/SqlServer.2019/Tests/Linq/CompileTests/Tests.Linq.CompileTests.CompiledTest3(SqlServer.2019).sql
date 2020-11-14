BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT TOP (@p1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 2
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT TOP (@p1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

