BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 0

SELECT
	CVar(@value),
	CVar(@value_1)

