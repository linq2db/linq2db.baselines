BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @VBLocal_SelectedValue Integer -- Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	[w].[ParentID],
	[w].[ChildID],
	[w].[GrandChildID]
FROM
	[GrandChild] [w]
WHERE
	[w].[ChildID] = @VBLocal_SelectedValue

