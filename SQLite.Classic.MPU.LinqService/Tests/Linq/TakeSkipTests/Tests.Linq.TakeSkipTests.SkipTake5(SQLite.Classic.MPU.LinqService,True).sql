BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 5
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
LIMIT @take OFFSET @skip

