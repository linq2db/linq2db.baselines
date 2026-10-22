-- Access.Ace.OleDb AccessOleDb
DECLARE @min Integer -- Int32
SET     @min = -2147483648

SELECT
	CVar(@min)

-- Access.Ace.OleDb AccessOleDb
DECLARE @max Integer -- Int32
SET     @max = 2147483647

SELECT
	CVar(@max)

