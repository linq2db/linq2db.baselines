BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ParentID] > 0 AND [t1].[ChildID] <> [t1].[ParentID] DESC,
	[t1].[ChildID]

