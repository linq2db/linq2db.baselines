-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 3
DECLARE @p_1  -- Int32
SET     @p_1 = 2

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p OR [x].[ParentID] = @p_1

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @p_1  -- Int32
SET     @p_1 = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p OR [x].[ParentID] = @p_1

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

