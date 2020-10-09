BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

