BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 3111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 4111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 3111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 4111

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

