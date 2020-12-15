BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 5
DECLARE @skip_1  -- Int32
SET     @skip_1 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip OFFSET @skip_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip_1  -- Int32
SET     @skip_1 = 5
DECLARE @skip_2  -- Int32
SET     @skip_2 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_1 OFFSET @skip_2

