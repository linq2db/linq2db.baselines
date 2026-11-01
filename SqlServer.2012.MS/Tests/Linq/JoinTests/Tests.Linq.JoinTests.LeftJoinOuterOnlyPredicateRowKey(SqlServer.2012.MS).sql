-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] = [p].[ParentID] * 10 + 1 AND [p].[ParentID] <> 2

