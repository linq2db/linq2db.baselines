﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			[t1].[ChildID]
		FROM
			[Child] [t1]
		LIMIT 1
	)
FROM
	[Parent] [p]

