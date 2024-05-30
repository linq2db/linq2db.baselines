BeforeExecute
-- Access AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 1

SELECT
	CVar(@value),
	CVar(@value_1)

