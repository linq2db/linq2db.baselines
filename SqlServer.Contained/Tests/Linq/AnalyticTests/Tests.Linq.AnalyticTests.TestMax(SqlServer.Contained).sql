BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	MAX([c_1].[ChildID]),
	MAX([c_1].[ChildID]),
	MAX(ALL [c_1].[ChildID]),
	MAX(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
GROUP BY
	[p].[ParentID]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	MAX([t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	MAX(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	MAX(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

