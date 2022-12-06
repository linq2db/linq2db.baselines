BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @_default Int -- Int32
SET     @_default = 0

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[Value1] IS NULL, ?, [p].[Value1]) > 0

