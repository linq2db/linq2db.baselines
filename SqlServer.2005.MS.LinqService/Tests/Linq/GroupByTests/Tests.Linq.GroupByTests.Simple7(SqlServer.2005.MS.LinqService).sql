BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[gr].[ParentID],
	[gr].[ChildID]
FROM
	[GrandChild] [gr]
GROUP BY
	[gr].[ParentID],
	[gr].[ChildID]

