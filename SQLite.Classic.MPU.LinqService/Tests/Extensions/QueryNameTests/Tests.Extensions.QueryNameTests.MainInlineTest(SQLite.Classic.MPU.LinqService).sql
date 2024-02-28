﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT /* Main */
	[p].[ParentID],
	[p].[Value1],
	[t1].[Count_1]
FROM
	(
		SELECT /* Inline */
			[g_1].[ParentID],
			Count(*) as [Count_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1],
	[Parent] [p]
WHERE
	[p].[ParentID] = [t1].[ParentID]

