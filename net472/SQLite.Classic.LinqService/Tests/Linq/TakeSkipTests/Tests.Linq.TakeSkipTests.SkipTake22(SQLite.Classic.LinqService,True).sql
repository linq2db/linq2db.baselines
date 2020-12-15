BeforeExecute
-- SQLite.Classic SQLite
DECLARE @skip_6  -- Int32
SET     @skip_6 = 5
DECLARE @skip_7  -- Int32
SET     @skip_7 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_6 OFFSET @skip_7

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @skip_7  -- Int32
SET     @skip_7 = 5
DECLARE @skip_8  -- Int32
SET     @skip_8 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_7 OFFSET @skip_8

