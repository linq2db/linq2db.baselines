-- SqlServer.2012.MS SqlServer.2012
DECLARE @date DateTime2
SET     @date = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[p].[ParentID],
	[g_1].[GrandChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [x]
			RIGHT JOIN [GrandChild] [g_1] ON [g_1].[ChildID] = [x].[ChildID] OR [g_1].[ChildID] IS NULL AND [x].[ChildID] IS NULL
		ON [p].[ParentID] = [g_1].[ParentID] AND CURRENT_TIMESTAMP < @date

