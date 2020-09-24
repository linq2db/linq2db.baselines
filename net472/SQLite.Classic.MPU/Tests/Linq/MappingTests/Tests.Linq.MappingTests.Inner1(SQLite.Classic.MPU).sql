BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
LIMIT @take

