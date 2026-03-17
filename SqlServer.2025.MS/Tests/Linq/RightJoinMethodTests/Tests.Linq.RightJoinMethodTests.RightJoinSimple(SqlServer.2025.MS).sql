-- SqlServer.2025.MS SqlServer.2025

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

