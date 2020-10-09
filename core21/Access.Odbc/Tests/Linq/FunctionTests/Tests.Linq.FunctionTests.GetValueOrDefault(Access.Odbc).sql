BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[Value1] IS NULL, 0, [p].[Value1]) > 0

