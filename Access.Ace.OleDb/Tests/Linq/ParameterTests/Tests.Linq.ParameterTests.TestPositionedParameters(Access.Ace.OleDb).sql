-- Access.Ace.OleDb AccessOleDb
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @x3_1 Integer -- Int32
SET     @x3_1 = 3
DECLARE @z2_1 Integer -- Int32
SET     @z2_1 = 2
DECLARE @x3_2 Integer -- Int32
SET     @x3_2 = 3
DECLARE @y10_1 Integer -- Int32
SET     @y10_1 = 10
DECLARE @z2_2 Integer -- Int32
SET     @z2_2 = 2
DECLARE @x3_3 Integer -- Int32
SET     @x3_3 = 3
DECLARE @z2_3 Integer -- Int32
SET     @z2_3 = 2
DECLARE @y10_2 Integer -- Int32
SET     @y10_2 = 10
DECLARE @z2_4 Integer -- Int32
SET     @z2_4 = 2
DECLARE @x3_4 Integer -- Int32
SET     @x3_4 = 3
DECLARE @y10_3 Integer -- Int32
SET     @y10_3 = 10
DECLARE @z2_5 Integer -- Int32
SET     @z2_5 = 2
DECLARE @x3_5 Integer -- Int32
SET     @x3_5 = 3
DECLARE @z2_6 Integer -- Int32
SET     @z2_6 = 2
DECLARE @z2_7 Integer -- Int32
SET     @z2_7 = 2
DECLARE @x3_6 Integer -- Int32
SET     @x3_6 = 3
DECLARE @y10_4 Integer -- Int32
SET     @y10_4 = 10
DECLARE @z2_8 Integer -- Int32
SET     @z2_8 = 2
DECLARE @x3_7 Integer -- Int32
SET     @x3_7 = 3
DECLARE @z2_9 Integer -- Int32
SET     @z2_9 = 2

SELECT
	((((CVar(@x3) * (CVar(@y10) - CVar(@z2)) / CVar(@x3_1)) * CVar(@z2_1)) * (((((CVar(@x3_2) * (CVar(@y10_1) - CVar(@z2_2)) / CVar(@x3_3)) * CVar(@z2_3)) * (CVar(@y10_2) - CVar(@z2_4)) / ((CVar(@x3_4) * (CVar(@y10_3) - CVar(@z2_5)) / CVar(@x3_5)) * CVar(@z2_6))) * CVar(@z2_7)) - [child_1].[ChildID]) / ((CVar(@x3_6) * (CVar(@y10_4) - CVar(@z2_8)) / CVar(@x3_7)) * CVar(@z2_9))) * [child_1].[ChildID])
FROM
	[Child] [child_1]

