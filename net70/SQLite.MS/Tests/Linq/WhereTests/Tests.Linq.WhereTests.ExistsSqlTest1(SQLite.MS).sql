﻿BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] + 100 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

