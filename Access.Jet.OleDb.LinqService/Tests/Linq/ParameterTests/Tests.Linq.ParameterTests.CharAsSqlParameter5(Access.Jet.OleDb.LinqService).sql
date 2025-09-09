BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @s1 WChar(1) -- StringFixedLength
SET     @s1 = chr(0)

SELECT
	CVar(@s1)

