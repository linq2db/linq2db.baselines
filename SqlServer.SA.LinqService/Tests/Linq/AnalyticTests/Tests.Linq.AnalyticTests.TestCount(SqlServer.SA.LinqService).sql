BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*),
	COUNT([c_1].[ChildID]),
	COUNT([c_1].[ChildID]),
	COUNT(ALL [c_1].[ChildID]),
	COUNT(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [c_1] ON [g_1].[ParentID] = [c_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT([t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

