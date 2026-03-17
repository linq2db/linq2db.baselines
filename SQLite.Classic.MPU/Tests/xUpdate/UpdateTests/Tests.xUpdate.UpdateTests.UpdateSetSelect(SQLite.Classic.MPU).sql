-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[ParentID] = (
		SELECT
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ChildID] = 11
	) + 1000
FROM
	[Child] [c_1]
WHERE
	[Parent].[ParentID] = 1 AND [Parent].[ParentID] = [c_1].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

UPDATE
	[Parent]
SET
	[ParentID] = @ParentID
WHERE
	[Parent].[ParentID] = 1001

