BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @skip_8  -- Int32
SET     @skip_8 = 5
DECLARE @skip_9  -- Int32
SET     @skip_9 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_8 OFFSET @skip_9

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @skip_9  -- Int32
SET     @skip_9 = 5
DECLARE @skip_10  -- Int32
SET     @skip_10 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_9 OFFSET @skip_10

