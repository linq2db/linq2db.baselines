﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (1, 2, 3, 4) AND [p].[Value1] = 2

