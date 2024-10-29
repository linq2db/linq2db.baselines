BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

