-- SqlServer.CS.MS SqlServer.2025
SELECT
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [p] ON [p].[Value1] = [c_1].[ParentID] AND [c_1].[ChildID] <> 11

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

