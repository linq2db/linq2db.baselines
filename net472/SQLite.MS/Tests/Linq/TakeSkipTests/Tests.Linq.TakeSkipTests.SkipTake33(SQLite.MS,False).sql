BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip_2  -- Int32
SET     @skip_2 = 5
DECLARE @skip_3  -- Int32
SET     @skip_3 = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
LIMIT @skip_2 OFFSET @skip_3

BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip_2  -- Int32
SET     @skip_2 = 5
DECLARE @skip_3  -- Int32
SET     @skip_3 = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
LIMIT @skip_2 OFFSET @skip_3

