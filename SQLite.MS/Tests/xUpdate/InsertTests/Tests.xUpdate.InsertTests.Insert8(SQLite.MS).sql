-- SQLite.MS SQLite
DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SQLite.MS SQLite
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@id
)

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- SQLite.MS SQLite
DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

