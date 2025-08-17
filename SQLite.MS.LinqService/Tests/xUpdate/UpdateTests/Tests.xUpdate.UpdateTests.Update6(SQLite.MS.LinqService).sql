BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1

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
-- SQLite.MS SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = 2
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

