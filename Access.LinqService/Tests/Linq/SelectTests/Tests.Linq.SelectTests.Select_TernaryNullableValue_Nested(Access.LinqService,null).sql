BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CVar(@value),
	CVar(@p)

