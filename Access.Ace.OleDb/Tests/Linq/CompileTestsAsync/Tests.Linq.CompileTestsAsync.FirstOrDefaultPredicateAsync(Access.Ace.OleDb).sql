BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT TOP 1
	CVar(@p),
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = CVar(@p_1)

