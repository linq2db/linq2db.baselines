BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	COUNT(*) > 0
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

