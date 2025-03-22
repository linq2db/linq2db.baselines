BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @stringValue VarWChar(5) -- String
SET     @stringValue = ' abc '
DECLARE @stringValue_1 VarWChar(5) -- String
SET     @stringValue_1 = ' abc '

SELECT
	CVar(@stringValue),
	LEN(CVar(@stringValue_1))

