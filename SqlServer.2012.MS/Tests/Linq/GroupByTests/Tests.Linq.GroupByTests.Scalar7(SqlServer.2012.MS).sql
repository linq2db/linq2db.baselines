-- SqlServer.2012.MS SqlServer.2012

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

