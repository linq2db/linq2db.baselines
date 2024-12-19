BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 11
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [param]
		LEFT JOIN [Parent] [a_Parent] ON ([param].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = @ParentID AND [a_Parent].[Value1] = @Value1

