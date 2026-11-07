-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

