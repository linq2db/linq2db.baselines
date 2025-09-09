BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

