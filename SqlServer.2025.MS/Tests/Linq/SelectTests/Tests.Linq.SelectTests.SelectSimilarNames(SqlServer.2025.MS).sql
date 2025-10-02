BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @parentId Int -- Int32
SET     @parentId = 1

SELECT
	[parent_1].[ParentID],
	[parent_1].[ChildID]
FROM
	[Parent] [child_1]
		INNER JOIN [Child] [parent_1] ON [parent_1].[ParentID] = [child_1].[ParentID]
WHERE
	[child_1].[Value1] = @parentId

