﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	[t1].[ParentID] > 1 AND Count(*) > 1 AND [t1].[ParentID] > 1

