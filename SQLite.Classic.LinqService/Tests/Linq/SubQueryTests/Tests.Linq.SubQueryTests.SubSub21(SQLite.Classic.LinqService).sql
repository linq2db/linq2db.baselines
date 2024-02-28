﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[p1].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] + 2 > 0 AND [p1].[ParentID] + 1 > 0

