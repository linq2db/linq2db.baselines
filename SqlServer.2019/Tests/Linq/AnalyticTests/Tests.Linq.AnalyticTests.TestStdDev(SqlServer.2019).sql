BeforeExecute
-- SqlServer.2019

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

BeforeExecute
-- SqlServer.2019

SELECT
	STDEV([t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2019

SELECT
	STDEV(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2019

SELECT
	STDEV(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

