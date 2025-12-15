-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

-- Access.Ace.OleDb AccessOleDb

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

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 5

UPDATE
	[Parent] [a_Parent],
	[Child] [child_1]
SET
	[a_Parent].[Value1] = @Value1
WHERE
	[child_1].[ChildID] = 10000 AND [child_1].[ParentID] = [a_Parent].[ParentID]

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Child] [x]
WHERE
	[x].[ChildID] = 10000

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 20000

