﻿BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3
	)

