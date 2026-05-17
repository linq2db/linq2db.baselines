-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param

