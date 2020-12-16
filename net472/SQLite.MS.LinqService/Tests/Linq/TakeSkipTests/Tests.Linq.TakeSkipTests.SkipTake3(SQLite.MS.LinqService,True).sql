BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 5
DECLARE @skip_1  -- Int32
SET     @skip_1 = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
LIMIT @skip OFFSET @skip_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 5
DECLARE @skip_1  -- Int32
SET     @skip_1 = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
LIMIT @skip OFFSET @skip_1

