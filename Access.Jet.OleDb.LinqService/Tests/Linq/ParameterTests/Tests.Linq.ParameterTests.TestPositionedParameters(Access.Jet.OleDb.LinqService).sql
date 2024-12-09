BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3

SELECT
	((((CVar(@x3) * (CVar(@y10) - CVar(@z2)) / CVar(@x3)) * CVar(@z2)) * (((((CVar(@x3) * (CVar(@y10) - CVar(@z2)) / CVar(@x3)) * CVar(@z2)) * (CVar(@y10) - CVar(@z2)) / ((CVar(@x3) * (CVar(@y10) - CVar(@z2)) / CVar(@x3)) * CVar(@z2))) * CVar(@z2)) - [child_1].[ChildID]) / ((CVar(@x3) * (CVar(@y10) - CVar(@z2)) / CVar(@x3)) * CVar(@z2))) * [child_1].[ChildID])
FROM
	[Child] [child_1]

