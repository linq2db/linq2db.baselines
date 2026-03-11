-- SqlServer.2014.MS SqlServer.2014

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

