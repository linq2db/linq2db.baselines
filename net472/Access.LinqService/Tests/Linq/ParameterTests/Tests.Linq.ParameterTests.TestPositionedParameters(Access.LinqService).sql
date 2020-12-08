BeforeExecute
-- Access AccessOleDb
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @x4 Integer -- Int32
SET     @x4 = 3
DECLARE @y11 Integer -- Int32
SET     @y11 = 10
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @x4 Integer -- Int32
SET     @x4 = 3
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @y12 Integer -- Int32
SET     @y12 = 10
DECLARE @z4 Integer -- Int32
SET     @z4 = 2
DECLARE @x4 Integer -- Int32
SET     @x4 = 3
DECLARE @y11 Integer -- Int32
SET     @y11 = 10
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @x4 Integer -- Int32
SET     @x4 = 3
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @z4 Integer -- Int32
SET     @z4 = 2
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @z2 Integer -- Int32
SET     @z2 = 2

SELECT
	((((@x3 * (@y10 - @z2) / @x3) * @z2) * (((((@x4 * (@y11 - @z3) / @x4) * @z3) * (@y12 - @z4) / ((@x4 * (@y11 - @z3) / @x4) * @z3)) * @z4) - [child_1].[ChildID]) / ((@x3 * (@y10 - @z2) / @x3) * @z2)) * [child_1].[ChildID])
FROM
	[Child] [child_1]

