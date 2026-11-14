-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 1001

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

