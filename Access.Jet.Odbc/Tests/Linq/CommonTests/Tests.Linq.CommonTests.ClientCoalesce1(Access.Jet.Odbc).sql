BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	IIF([x].[Value1] IS NULL, ?, [x].[Value1]) > 10

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

