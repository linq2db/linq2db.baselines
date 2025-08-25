BeforeExecute
-- SqlServer.2016 (asynchronously)

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

BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	MAX([t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	MAX(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	MAX(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

