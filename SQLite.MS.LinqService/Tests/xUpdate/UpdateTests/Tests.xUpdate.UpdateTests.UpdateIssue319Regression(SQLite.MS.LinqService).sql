BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 100500
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

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
SET     @id = 100500

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 100500
DECLARE @id  -- Int32
SET     @id = 100500

UPDATE
	[Parent]
SET
	[Value1] = @ParentID
WHERE
	[Parent].[ParentID] = @id AND (
		SELECT
			COUNT(*)
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = @id
	) > 0

