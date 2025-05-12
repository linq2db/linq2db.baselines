BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @stringValue VarWChar(1) -- String
SET     @stringValue = ' '
DECLARE @stringValue_1 Integer -- Int32
SET     @stringValue_1 = 1

SELECT
	CVar(@stringValue),
	CVar(@stringValue_1)

