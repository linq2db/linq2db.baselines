BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	Iif([p].[Value1] IS NULL, ?, [p].[Value1])
FROM
	[Parent] [p]

