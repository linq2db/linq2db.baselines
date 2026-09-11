-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 6

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] >= @p

-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 7

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] >= @p

