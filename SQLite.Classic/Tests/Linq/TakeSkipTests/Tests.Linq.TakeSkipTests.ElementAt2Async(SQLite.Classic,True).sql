﻿BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @n  -- Int32
SET     @n = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]
LIMIT @take OFFSET @n

