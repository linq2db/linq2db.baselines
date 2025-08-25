BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1])
FROM
	[Parent] [p]

