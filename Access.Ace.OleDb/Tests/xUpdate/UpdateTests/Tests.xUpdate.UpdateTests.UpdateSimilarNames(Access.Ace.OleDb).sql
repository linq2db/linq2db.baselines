BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 20000

UPDATE
	[Child] [parent_1],
	[Parent] [child_1]
SET
	[parent_1].[ParentID] = @ParentID
WHERE
	[child_1].[Value1] = 20000 AND [parent_1].[ParentID] = [child_1].[ParentID]

