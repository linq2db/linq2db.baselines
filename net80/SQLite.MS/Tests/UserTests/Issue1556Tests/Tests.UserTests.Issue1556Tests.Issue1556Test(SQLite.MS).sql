﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID] OR EXISTS(
			SELECT
				*
			FROM
				[GrandChild] [y]
			WHERE
				[y].[ParentID] = [p].[ParentID] AND [c_1].[ParentID] = [y].[ParentID] AND
				[c_1].[ChildID] = [y].[ChildID]
		))

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [c_1]
WHERE
	([p].[ParentID] = [c_1].[ParentID] OR EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [y]
		WHERE
			[y].[ParentID] = [p].[ParentID] AND [c_1].[ParentID] = [y].[ParentID] AND
			[c_1].[ChildID] = [y].[ChildID]
	))

