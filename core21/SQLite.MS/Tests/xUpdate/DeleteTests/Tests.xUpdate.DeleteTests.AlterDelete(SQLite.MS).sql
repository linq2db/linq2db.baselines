BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				LEFT JOIN [Child] [lj1] ON [p].[ParentID] = [lj1].[ParentID]
		WHERE
			(([lj1].[ParentID] IS NOT NULL OR [lj1].[ChildID] IS NOT NULL) AND [lj1].[ParentID] = -1 OR [lj1].[ParentID] IS NULL AND [lj1].[ChildID] IS NULL AND [p].[ParentID] = -1) AND [Parent].[ParentID] = [p].[ParentID] AND [Parent].[Value1] = [p].[Value1]
	)

