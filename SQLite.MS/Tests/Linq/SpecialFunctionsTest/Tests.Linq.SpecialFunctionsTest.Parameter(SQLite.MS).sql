-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[q].[ParentID],
	[q].[Value1]
FROM
	[Parent] [q]
WHERE
	[q].[ParentID] = @p

-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[q].[ParentID],
	[q].[Value1]
FROM
	[Parent] [q]
WHERE
	[q].[ParentID] = @p

