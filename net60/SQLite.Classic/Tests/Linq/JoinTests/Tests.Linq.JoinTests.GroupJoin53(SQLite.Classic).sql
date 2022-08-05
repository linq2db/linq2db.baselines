﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[ch].[ParentID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID]
		LIMIT @take
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

