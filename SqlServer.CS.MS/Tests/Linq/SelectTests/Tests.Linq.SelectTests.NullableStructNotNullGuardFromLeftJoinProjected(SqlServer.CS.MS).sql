-- SqlServer.CS.MS SqlServer.2025
SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [x]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [x].[ParentID]

