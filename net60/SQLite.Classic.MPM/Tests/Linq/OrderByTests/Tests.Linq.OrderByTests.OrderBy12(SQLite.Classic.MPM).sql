﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2 DESC

