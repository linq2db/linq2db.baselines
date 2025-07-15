BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	Mid('123', 2, CVar(@p))

