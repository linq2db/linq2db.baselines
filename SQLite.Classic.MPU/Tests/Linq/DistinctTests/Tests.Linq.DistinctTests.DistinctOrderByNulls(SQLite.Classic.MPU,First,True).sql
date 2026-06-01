-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT
	[p].[Value1]
FROM
	[Parent] [p]
ORDER BY
	[p].[Value1] DESC NULLS FIRST
LIMIT @take

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

