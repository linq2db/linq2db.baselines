-- SQLite.Classic SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.Classic SQLite
DECLARE @ParentID Integer -- Int32
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

-- SQLite.Classic SQLite
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

-- SQLite.Classic SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

