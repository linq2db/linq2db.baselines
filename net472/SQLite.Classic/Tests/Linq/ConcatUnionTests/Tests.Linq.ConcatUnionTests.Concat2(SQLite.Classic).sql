﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
		UNION ALL
		SELECT
			[p_1].[ParentID],
			[p_1].[Value1]
		FROM
			[Parent] [p_1]
		WHERE
			[p_1].[ParentID] = 2
	) [t1]
UNION ALL
SELECT
	[p_2].[ParentID],
	[p_2].[Value1]
FROM
	[Parent] [p_2]
WHERE
	[p_2].[ParentID] = 4

