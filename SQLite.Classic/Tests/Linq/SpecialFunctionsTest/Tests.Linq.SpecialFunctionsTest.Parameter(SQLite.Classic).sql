BeforeExecute
-- SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 1

SELECT
	[q].[ParentID],
	[q].[Value1]
FROM
	[Parent] [q]
WHERE
	[q].[ParentID] = @cond

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 2

SELECT
	[q].[ParentID],
	[q].[Value1]
FROM
	[Parent] [q]
WHERE
	[q].[ParentID] = @cond

