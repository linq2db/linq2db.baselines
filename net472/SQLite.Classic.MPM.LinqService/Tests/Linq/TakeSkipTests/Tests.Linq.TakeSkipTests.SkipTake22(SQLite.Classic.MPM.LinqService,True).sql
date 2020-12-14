BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @skip_10  -- Int32
SET     @skip_10 = 5
DECLARE @skip_11  -- Int32
SET     @skip_11 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_10 OFFSET @skip_11

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @skip_11  -- Int32
SET     @skip_11 = 5
DECLARE @skip_12  -- Int32
SET     @skip_12 = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
LIMIT @skip_11 OFFSET @skip_12

