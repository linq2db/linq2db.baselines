﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x_1].[Key_1],
	Sum([x_1].[MatchScore])
FROM
	(
		SELECT DISTINCT
			[x].[Value1] as [Key_1],
			4 as [MatchScore]
		FROM
			[Parent] [x]
	) [x_1]
GROUP BY
	[x_1].[Key_1]

