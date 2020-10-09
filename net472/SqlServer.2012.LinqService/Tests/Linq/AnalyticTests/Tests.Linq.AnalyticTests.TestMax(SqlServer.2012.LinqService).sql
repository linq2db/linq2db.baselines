BeforeExecute
-- SqlServer.2012

SELECT 
	Max([c_1].[ChildID]), 
	MAX([c_1].[ChildID]), 
	MAX(ALL [c_1].[ChildID]), 
	MAX(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
GROUP BY
	[p].[ParentID]

BeforeExecute
-- SqlServer.2012

SELECT 
	Max([c_1].[ParentID])
FROM
	[Child] [c_1]

BeforeExecute
-- SqlServer.2012

SELECT 
	MAX(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2012

SELECT 
	MAX(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

