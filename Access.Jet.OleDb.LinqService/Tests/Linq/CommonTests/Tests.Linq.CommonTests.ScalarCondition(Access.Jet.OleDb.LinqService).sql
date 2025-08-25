BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100)
FROM
	[Parent] [p]

