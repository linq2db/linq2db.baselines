-- Access.Jet.OleDb AccessOleDb
DECLARE @s1 VarWChar(7) -- String
SET     @s1 = '0 ' + chr(0) + ' '' 0'

SELECT
	CVar(@s1)

