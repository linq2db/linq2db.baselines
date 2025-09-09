BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	NOT ([ch].[ParentID] = @ParentID AND [ch].[ChildID] = @ChildID)

