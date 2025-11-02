-- SqlServer.2008.MS SqlServer.2008

SELECT
	[gr].[ParentID],
	[gr].[ChildID]
FROM
	[GrandChild] [gr]
GROUP BY
	[gr].[ParentID],
	[gr].[ChildID]

