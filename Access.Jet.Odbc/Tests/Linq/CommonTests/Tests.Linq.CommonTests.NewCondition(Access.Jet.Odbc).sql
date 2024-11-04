BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100)
FROM
	[Parent] [p]

