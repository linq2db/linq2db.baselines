-- Access.Ace.OleDb AccessOleDb
DECLARE @min TinyInt -- SByte
SET     @min = -128

SELECT
	CVar(@min)

-- Access.Ace.OleDb AccessOleDb
DECLARE @max TinyInt -- SByte
SET     @max = 127

SELECT
	CVar(@max)

