BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 1111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 2111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 3111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 4111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(1111,1111),
(2111,2111),
(3111,3111),
(4111,4111)

BeforeExecute
CommitTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 1111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 2111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 3111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 4111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @parent_ParentID

