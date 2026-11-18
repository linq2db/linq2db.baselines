-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[Parent] [a_Parent],
	[Child] [child_1]
SET
	[a_Parent].[Value1] = 5
WHERE
	[child_1].[ChildID] = 10000 AND [child_1].[ParentID] = [a_Parent].[ParentID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Child] [x]
WHERE
	[x].[ChildID] = 10000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 20000

