BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[ParentID] = (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] = 11
	) + 1000
FROM
	[Child] [c_2]
WHERE
	[Parent].[ParentID] = 1 AND [Parent].[ParentID] = [c_2].[ParentID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

UPDATE
	[Parent]
SET
	[ParentID] = @ParentID
WHERE
	[Parent].[ParentID] = 1001

