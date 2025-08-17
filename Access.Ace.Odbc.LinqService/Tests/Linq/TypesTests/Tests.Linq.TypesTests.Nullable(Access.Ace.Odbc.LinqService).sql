BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 0)
FROM
	[Parent] [p]

