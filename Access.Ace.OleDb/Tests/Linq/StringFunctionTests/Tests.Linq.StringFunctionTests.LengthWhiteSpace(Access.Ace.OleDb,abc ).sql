BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @stringValue VarWChar(4) -- String
SET     @stringValue = 'abc '
DECLARE @stringValue_1 VarWChar(4) -- String
SET     @stringValue_1 = 'abc '

SELECT
	CVar(@stringValue),
	LEN(CVar(@stringValue_1))

