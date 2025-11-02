-- SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
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

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 1001

-- SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

