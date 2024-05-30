BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CVar(@value),
	CVar(@p)

