-- SQLite.MS SQLite
DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SQLite.MS SQLite
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 1001

-- SQLite.MS SQLite
DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

