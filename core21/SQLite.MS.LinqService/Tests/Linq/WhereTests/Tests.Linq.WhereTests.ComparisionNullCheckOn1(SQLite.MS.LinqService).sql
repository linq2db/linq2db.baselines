﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	([p].[Value1] IS NULL OR [p].[Value1] <> 1)

