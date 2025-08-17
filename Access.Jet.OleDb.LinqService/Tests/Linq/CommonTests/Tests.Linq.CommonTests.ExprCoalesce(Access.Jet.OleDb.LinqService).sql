BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([p].[Value1] IS NULL, 100, [p].[Value1]) + 50
FROM
	[Parent] [p]

