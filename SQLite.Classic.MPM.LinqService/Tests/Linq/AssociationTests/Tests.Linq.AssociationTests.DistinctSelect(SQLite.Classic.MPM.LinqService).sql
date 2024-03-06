BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_2].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Child].[ParentID],
			[a_Child].[ChildID]
		FROM
			[GrandChild] [c_1]
				LEFT JOIN [Child] [a_Child] ON ([c_1].[ParentID] = [a_Child].[ParentID] OR [c_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([c_1].[ChildID] = [a_Child].[ChildID] OR [c_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
				LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] > 0
	) [c_2]

