BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = 100

SELECT
	Iif([p].[Value1] IS NULL, ?, [p].[Value1])
FROM
	[Parent] [p]

