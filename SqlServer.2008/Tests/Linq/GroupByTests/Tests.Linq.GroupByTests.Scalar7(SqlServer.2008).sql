-- SqlServer.2008

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

