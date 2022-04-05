BeforeExecute
-- Access AccessOleDb
DECLARE @Local_id Integer -- Int32
SET     @Local_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @Local_id

