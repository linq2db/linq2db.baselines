﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Parent] [c_1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [o]
				LEFT JOIN [Parent] [a_Parent] ON [o].[ParentID] = [a_Parent].[ParentID]
		WHERE
			([a_Parent].[ParentID] = [c_1].[ParentID] AND ([a_Parent].[Value1] IS NULL AND [c_1].[Value1] IS NULL OR [a_Parent].[Value1] = [c_1].[Value1])) AND
			NOT EXISTS(
				SELECT
					*
				FROM
					[Child] [e]
				WHERE
					([o].[ParentID] = [e].[ParentID] AND [o].[ChildID] = [e].[ChildID]) AND
					[e].[ChildID] > 10
			)
	)

