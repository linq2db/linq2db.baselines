-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX([c_1].[ChildID]),
	MAX([c_1].[ChildID]),
	MAX(ALL [c_1].[ChildID]),
	MAX(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [c_1] ON [g_1].[ParentID] = [c_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX([t1].[ParentID])
FROM
	[Child] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX(ALL [t1].[ParentID])
FROM
	[Child] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

