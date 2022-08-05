﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id2  -- Int32
SET     @id2 = 10000
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(([p].[ParentID] = @id1 OR [p].[ParentID] >= @id1) OR [p].[ParentID] >= @id2)
ORDER BY
	[p].[ParentID]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id1  -- Int32
SET     @id1 = 2
DECLARE @id2  -- Int32
SET     @id2 = 10000
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(([p].[ParentID] = @id1 OR [p].[ParentID] >= @id1) OR [p].[ParentID] >= @id2)
ORDER BY
	[p].[ParentID]
LIMIT @take

