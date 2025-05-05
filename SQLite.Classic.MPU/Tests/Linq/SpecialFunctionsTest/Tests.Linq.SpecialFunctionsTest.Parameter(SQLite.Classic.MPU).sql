BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[q].[ParentID],
	[q].[Value1]
FROM
	[Parent] [q]
WHERE
	[q].[ParentID] = @p

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[q].[ParentID],
	[q].[Value1]
FROM
	[Parent] [q]
WHERE
	[q].[ParentID] = @p

