-- Access.Jet.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = 7
DECLARE @p2 Int -- Int32
SET     @p2 = 3

SELECT
	-([r].[A] + ?),
	[r].[A] * ?,
	-([r].[A] - -5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

