﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] <= 3
	)

