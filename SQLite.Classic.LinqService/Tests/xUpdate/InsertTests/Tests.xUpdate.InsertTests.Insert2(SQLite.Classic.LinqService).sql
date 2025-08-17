BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

