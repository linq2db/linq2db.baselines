BeforeExecute
-- Access AccessOleDb
DECLARE @$VB$Local_id Integer -- Int32
SET     @$VB$Local_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @$VB$Local_id

