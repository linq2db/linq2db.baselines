BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5

SELECT
	CVar(@value),
	IIF(1 = 1, CVar(@p), CVar(@p_1))

