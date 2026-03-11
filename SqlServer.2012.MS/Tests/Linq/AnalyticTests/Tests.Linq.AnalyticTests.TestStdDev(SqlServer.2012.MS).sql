-- SqlServer.2012.MS SqlServer.2012

SELECT
	STDEV([c_1].[ChildID]),
	STDEV([c_1].[ChildID]),
	STDEV(ALL [c_1].[ChildID]),
	STDEV(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [c_1] ON [g_1].[ParentID] = [c_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	STDEV([t1].[ParentID])
FROM
	[Child] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	STDEV(ALL [t1].[ParentID])
FROM
	[Child] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	STDEV(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

