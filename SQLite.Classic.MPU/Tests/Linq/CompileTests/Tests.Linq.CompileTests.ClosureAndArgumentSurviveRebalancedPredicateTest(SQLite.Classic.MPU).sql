-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @floor  -- Int32
SET     @floor = 0

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND
	[p].[ParentID] > @floor AND
	[p].[ParentID] < 1000 AND
	[p].[ParentID] <> -1

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2
DECLARE @floor  -- Int32
SET     @floor = 0

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND
	[p].[ParentID] > @floor AND
	[p].[ParentID] < 1000 AND
	[p].[ParentID] <> -1

