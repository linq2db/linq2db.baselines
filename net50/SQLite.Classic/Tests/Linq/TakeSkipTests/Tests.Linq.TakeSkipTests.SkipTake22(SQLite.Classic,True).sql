BeforeExecute
-- SQLite.Classic SQLite
DECLARE @skip_1  -- Int32
SET     @skip_1 = 5
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_1 OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @skip_1  -- Int32
SET     @skip_1 = 5
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_1 OFFSET @skip

