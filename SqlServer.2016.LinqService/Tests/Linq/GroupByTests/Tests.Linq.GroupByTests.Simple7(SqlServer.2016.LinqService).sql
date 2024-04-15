BeforeExecute
-- SqlServer.2016

SELECT
	[gr].[ParentID],
	[gr].[ChildID]
FROM
	[GrandChild] [gr]
GROUP BY
	[gr].[ParentID],
	[gr].[ChildID]

