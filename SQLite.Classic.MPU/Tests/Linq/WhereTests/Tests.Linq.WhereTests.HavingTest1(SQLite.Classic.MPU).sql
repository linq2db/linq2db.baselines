﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	Count(*) > 1

