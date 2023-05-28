BeforeExecute
-- Access AccessOleDb
DECLARE @$VB$Local_SelectedValue Integer -- Int32
SET     @$VB$Local_SelectedValue = 1

SELECT
	[w].[ParentID],
	[w].[ChildID],
	[w].[GrandChildID]
FROM
	[GrandChild] [w]
WHERE
	[w].[ChildID] IS NOT NULL AND [w].[ChildID] = @$VB$Local_SelectedValue

