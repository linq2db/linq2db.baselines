﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p],
	[Child] [_]
WHERE
	[_].[ParentID] + 1 > 1

