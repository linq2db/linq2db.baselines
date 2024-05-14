BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CVar(@value),
	CVar(@p)

