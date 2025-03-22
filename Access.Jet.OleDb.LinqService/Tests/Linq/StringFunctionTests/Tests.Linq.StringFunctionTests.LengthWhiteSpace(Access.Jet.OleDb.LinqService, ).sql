BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @stringValue VarWChar(1) -- String
SET     @stringValue = ' '
DECLARE @stringValue_1 VarWChar(1) -- String
SET     @stringValue_1 = ' '

SELECT
	CVar(@stringValue),
	LEN(CVar(@stringValue_1))

