BeforeExecute
-- SqlServer.2008

SELECT 
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

