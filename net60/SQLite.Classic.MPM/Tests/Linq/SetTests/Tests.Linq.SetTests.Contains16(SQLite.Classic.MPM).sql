BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[ChildID],
	[p].[GrandChildID]
FROM
	[GrandChild] [p]
		LEFT JOIN [Child] [a_Child] ON ([p].[ParentID] = [a_Child].[ParentID] OR [p].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([p].[ChildID] = [a_Child].[ChildID] OR [p].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
WHERE
	([a_Child].[ParentID] = 1 AND [a_Child].[ChildID] = 11 OR [a_Child].[ParentID] = 2 AND [a_Child].[ChildID] = 21)

