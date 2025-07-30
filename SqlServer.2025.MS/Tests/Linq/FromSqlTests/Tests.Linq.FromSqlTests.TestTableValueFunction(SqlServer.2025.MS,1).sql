BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @offset Int -- Int32
SET     @offset = 1

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [t]
		CROSS APPLY GetParentByID(([t].[ParentID] + @offset)) [p]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @offset Int -- Int32
SET     @offset = 1

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = [t].[ParentID] + @offset

