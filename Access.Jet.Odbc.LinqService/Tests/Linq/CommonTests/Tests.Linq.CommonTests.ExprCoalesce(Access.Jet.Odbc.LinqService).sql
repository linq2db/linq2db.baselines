BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	IIF([p].[Value1] IS NULL, 100, [p].[Value1]) + 50
FROM
	[Parent] [p]

