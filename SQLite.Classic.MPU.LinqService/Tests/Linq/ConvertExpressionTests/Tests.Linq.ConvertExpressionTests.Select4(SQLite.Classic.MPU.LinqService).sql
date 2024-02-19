﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			Sum([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 1 AND [a_Children].[ParentID] < 10 AND
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

