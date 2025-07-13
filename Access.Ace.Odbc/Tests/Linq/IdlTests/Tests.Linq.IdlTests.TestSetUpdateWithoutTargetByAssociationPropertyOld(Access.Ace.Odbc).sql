BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 5

UPDATE
	[Parent] [a_Parent],
	[Child] [child_1]
SET
	[a_Parent].[Value1] = ?
WHERE
	[child_1].[ChildID] = 10000 AND [child_1].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Child] [x]
WHERE
	[x].[ChildID] = 10000

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 20000

