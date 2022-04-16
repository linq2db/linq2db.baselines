BeforeExecute
-- SqlServer.2017
DECLARE @ChildID Int -- Int32
SET     @ChildID = 10

UPDATE
	[c_2]
SET
	[c_2].[ChildID] = @ChildID
FROM
	[Parent] [x]
		INNER JOIN [Child] [c_1] ON [x].[ParentID] = [c_1].[ParentID]
		INNER JOIN [Child] [c_2] ON [c_1].[ParentID] = [c_2].[ChildID]
WHERE
	1 = 0

