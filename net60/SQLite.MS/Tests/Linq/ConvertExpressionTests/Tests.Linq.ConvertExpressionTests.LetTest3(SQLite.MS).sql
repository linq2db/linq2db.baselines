﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[p].[ParentID]
		FROM
			[Child] [p]
		LIMIT @take
	)
FROM
	[Parent] [p_1]

