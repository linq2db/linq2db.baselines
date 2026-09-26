-- Access.Jet.OleDb AccessOleDb
DECLARE @min SmallInt -- Int16
SET     @min = -32768

SELECT
	CVar(@min)

-- Access.Jet.OleDb AccessOleDb
DECLARE @max SmallInt -- Int16
SET     @max = 32767

SELECT
	CVar(@max)

