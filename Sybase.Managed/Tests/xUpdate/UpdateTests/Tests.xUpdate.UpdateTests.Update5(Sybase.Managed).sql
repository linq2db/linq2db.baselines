BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = @ChildID
FROM
	[Parent] [a_Parent]
WHERE
	[Child].[ChildID] = @id AND [a_Parent].[Value1] = 1 AND
	[Child].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

