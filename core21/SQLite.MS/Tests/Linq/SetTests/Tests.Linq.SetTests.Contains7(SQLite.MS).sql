﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = 11
	)

