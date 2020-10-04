BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 1
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[Value1],
	[ParentID]
)
VALUES
(
	@Value1,
	@ParentID
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 2
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 3
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 3

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

