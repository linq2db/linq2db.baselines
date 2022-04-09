BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

