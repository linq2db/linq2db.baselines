﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] < 3 AND [g_1].[ParentID] = [ch].[ParentID] AND
			[ch].[ParentID] < 3
	)
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] < 3
GROUP BY
	[g_1].[ParentID]

