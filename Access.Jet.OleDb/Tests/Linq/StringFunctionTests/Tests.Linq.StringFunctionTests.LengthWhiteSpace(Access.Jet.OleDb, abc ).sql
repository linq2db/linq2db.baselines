BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @stringValue VarWChar(5) -- String
SET     @stringValue = ' abc '
DECLARE @stringValue_1 Integer -- Int32
SET     @stringValue_1 = 5

SELECT
	CVar(@stringValue),
	CVar(@stringValue_1)

