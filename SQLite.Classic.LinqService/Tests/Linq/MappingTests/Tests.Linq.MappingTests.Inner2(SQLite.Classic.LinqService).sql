﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] = 1 AND [p].[Value1] IS NOT NULL
LIMIT 1

