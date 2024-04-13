BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	MAX([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	MAX([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

