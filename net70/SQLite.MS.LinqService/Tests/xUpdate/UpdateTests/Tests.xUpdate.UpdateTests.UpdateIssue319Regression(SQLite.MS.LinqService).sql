BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 100500

SELECT
	[_].[ParentID]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
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
			Count(*)
		FROM
			[Parent] [_]
		WHERE
			[_].[ParentID] = @id
	) > 0

