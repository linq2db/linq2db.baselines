BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	Mid('123', 2, @p)

