-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

