-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[ParentID]
LIMIT @take OFFSET @skip

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[ParentID]
LIMIT @take OFFSET @skip

