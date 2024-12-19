BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = [c_1].[ChildID] + 1,
	[ParentID] = [p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[c_1].[ChildID] = @id AND
	[a_Parent].[Value1] = 1 AND
	[Child].[ParentID] = [c_1].[ParentID] AND
	[Child].[ChildID] = [c_1].[ChildID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

