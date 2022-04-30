BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	IIF([t1].[ParentID] > 0 AND [t1].[ChildID] <> [t1].[ParentID], 1, 0) DESC,
	[t1].[ChildID]

