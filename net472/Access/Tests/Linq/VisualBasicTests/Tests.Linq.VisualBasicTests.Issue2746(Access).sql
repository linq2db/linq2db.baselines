BeforeExecute
-- Access AccessOleDb
DECLARE @Local_SelectedValue Integer -- Int32
SET     @Local_SelectedValue = 1

SELECT
	[w].[ParentID],
	[w].[ChildID],
	[w].[GrandChildID]
FROM
	[GrandChild] [w]
WHERE
	[w].[ChildID] IS NOT NULL AND [w].[ChildID] = @Local_SelectedValue

