BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip_1_1_1_1  -- Int32
SET     @skip_1_1_1_1 = 5
DECLARE @skip_1_1_1_1_1  -- Int32
SET     @skip_1_1_1_1_1 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_1_1_1_1 OFFSET @skip_1_1_1_1_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip_1_1_1_1_1  -- Int32
SET     @skip_1_1_1_1_1 = 5
DECLARE @skip_1_1_1_1_1_1  -- Int32
SET     @skip_1_1_1_1_1_1 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_1_1_1_1_1 OFFSET @skip_1_1_1_1_1_1

