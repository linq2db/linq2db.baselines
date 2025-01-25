BeforeExecute
-- SqlServer.2019

SELECT
	MIN([c_1].[ChildID]),
	MIN([c_1].[ChildID]),
	MIN(ALL [c_1].[ChildID]),
	MIN(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [c_1] ON [g_1].[ParentID] = [c_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

BeforeExecute
-- SqlServer.2019

SELECT
	MIN([t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2019

SELECT
	MIN(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2019

SELECT
	MIN(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

