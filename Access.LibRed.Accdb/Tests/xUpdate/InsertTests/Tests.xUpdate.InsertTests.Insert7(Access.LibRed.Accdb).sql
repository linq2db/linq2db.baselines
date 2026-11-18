-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1001
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	@id,
	@ParentID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

