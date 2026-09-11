-- Access.Ace.OleDb AccessOleDb
DECLARE @s1 VarWChar(7) -- String
SET     @s1 = chr(0) + ' ' + chr(0) + ' '' ' + chr(0)

SELECT
	CVar(@s1)

