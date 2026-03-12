-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [r]
				LEFT JOIN ([Child] [a_Child]
					LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID])
				ON [r].[ParentID] = [a_Child].[ParentID] AND [r].[ChildID] = [a_Child].[ChildID]
		WHERE
			[a_Parent].[ParentID] = 1
	)

