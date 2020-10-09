BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	Max([t1].[ChildID]), 
	Max([t1].[ChildID] + [t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

