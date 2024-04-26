BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CVar(@value),
	IIF(1 = 1, CVar(@p), 3)

