BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2
DECLARE @ChildID_1 Int -- Int32
SET     @ChildID_1 = 21

SELECT 
	[ch].[ParentID], 
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ParentID] = @ParentID_1 AND [ch].[ChildID] = @ChildID_1)

