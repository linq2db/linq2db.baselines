﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	([p].[ParentID] IS NOT NULL OR [p].[Value1] IS NOT NULL)

