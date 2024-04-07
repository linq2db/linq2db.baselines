BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif([p].[Value1] IS NULL, 100, [p].[Value1])
FROM
	[Parent] [p]

