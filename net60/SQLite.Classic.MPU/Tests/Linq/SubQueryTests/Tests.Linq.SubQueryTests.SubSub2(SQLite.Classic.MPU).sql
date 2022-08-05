﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			[c_1].[ParentID] + 1
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] + 1 < [p1].[ID] AND [c_1].[ParentID] + 1 < [p1].[ID] AND
			[p1].[ParentID] = [c_1].[ParentID]
		LIMIT 1
	)
FROM
	(
		SELECT
			[p2].[ParentID] + 2 as [ID],
			[p2].[ParentID]
		FROM
			[Parent] [p2]
		WHERE
			[p2].[ParentID] > -1
	) [p1]
WHERE
	[p1].[ID] > 0

