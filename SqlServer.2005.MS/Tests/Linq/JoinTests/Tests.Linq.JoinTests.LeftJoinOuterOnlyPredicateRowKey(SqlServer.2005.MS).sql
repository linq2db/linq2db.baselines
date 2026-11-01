-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] = [p].[ParentID] * 10 + 1 AND [p].[ParentID] <> 2

