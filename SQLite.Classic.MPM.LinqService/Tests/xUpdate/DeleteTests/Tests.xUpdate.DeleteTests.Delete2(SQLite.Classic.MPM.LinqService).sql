BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

