-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@id,
	1001
)

-- SQLite.MS SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

