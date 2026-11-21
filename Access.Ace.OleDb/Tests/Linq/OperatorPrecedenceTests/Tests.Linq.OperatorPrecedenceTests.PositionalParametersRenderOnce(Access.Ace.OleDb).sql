-- Access.Ace.OleDb AccessOleDb
DECLARE @p1 Integer -- Int32
SET     @p1 = 7
DECLARE @p2 Integer -- Int32
SET     @p2 = 3

SELECT
	-([r].[A] + @p1),
	[r].[A] * @p2,
	-([r].[A] - -5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

