﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100

