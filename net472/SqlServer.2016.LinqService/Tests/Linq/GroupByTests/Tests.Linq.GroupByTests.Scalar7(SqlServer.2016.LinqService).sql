BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

