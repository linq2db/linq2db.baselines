-- SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SQLite.MS SQLite
DECLARE @ChildID  -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@ChildID
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

-- SQLite.MS SQLite
DECLARE @id  -- Int32
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

