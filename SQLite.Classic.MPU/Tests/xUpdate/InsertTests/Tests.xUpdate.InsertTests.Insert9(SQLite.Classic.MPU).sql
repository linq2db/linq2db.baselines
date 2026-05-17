-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] > 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[p].[ParentID],
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @id

-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] > 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

