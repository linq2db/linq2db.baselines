BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 5

UPDATE
	[Parent] [a_Parent],
	[Child] [child_1]
SET
	[a_Parent].[Value1] = @Value1
WHERE
	[child_1].[ChildID] = 10000 AND [child_1].[ParentID] = [a_Parent].[ParentID]

