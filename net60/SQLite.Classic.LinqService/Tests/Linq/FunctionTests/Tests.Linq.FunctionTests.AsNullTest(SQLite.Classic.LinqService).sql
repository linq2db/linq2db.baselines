﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
		CROSS JOIN [Parent] [p2]
WHERE
	([p1].[Value1] = [p2].[Value1] OR [p1].[Value1] IS NULL AND [p2].[Value1] IS NULL)

