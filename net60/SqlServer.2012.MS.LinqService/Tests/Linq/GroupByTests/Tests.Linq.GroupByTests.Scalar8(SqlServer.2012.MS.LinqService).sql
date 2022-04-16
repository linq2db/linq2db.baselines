BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

