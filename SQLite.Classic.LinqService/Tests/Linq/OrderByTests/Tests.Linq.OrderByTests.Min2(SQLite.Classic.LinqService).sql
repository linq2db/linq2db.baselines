﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	Min([t2].[ParentID])
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
		LIMIT @take
	) [t2]

