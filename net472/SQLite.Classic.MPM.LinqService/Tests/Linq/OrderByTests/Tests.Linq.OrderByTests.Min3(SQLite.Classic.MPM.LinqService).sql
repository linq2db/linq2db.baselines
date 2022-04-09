﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	Min([t1].[ParentID])
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		ORDER BY
			[p].[Value1]
		LIMIT @take
	) [t1]

