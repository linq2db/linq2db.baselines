﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] + 1 < [p1].[ParentID] + 2 AND [c_1].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[p1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] + 2 > 0 AND [p1].[ParentID] + 1 > 0

