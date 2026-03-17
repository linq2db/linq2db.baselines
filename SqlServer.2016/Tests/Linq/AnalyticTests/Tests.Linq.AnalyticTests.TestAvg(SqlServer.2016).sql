-- SqlServer.2016

SELECT
	AVG([c_1].[ChildID]),
	AVG([c_1].[ChildID]),
	AVG(ALL [c_1].[ChildID]),
	AVG(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [c_1] ON [g_1].[ParentID] = [c_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

-- SqlServer.2016

SELECT
	AVG([t1].[ParentID])
FROM
	[Child] [t1]

-- SqlServer.2016

SELECT
	AVG(ALL [t1].[ParentID])
FROM
	[Child] [t1]

-- SqlServer.2016

SELECT
	AVG(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

