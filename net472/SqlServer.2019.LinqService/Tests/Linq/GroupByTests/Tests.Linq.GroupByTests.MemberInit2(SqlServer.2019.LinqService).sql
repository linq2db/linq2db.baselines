BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID],
	[t1].[ChildID]

