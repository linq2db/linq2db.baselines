BeforeExecute
-- Access AccessOleDb
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @x4 Integer -- Int32
SET     @x4 = 3
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @x5 Integer -- Int32
SET     @x5 = 3
DECLARE @y11 Integer -- Int32
SET     @y11 = 10
DECLARE @z4 Integer -- Int32
SET     @z4 = 2
DECLARE @x6 Integer -- Int32
SET     @x6 = 3
DECLARE @z5 Integer -- Int32
SET     @z5 = 2
DECLARE @y12 Integer -- Int32
SET     @y12 = 10
DECLARE @z6 Integer -- Int32
SET     @z6 = 2
DECLARE @x7 Integer -- Int32
SET     @x7 = 3
DECLARE @y13 Integer -- Int32
SET     @y13 = 10
DECLARE @z7 Integer -- Int32
SET     @z7 = 2
DECLARE @x8 Integer -- Int32
SET     @x8 = 3
DECLARE @z8 Integer -- Int32
SET     @z8 = 2
DECLARE @z9 Integer -- Int32
SET     @z9 = 2
DECLARE @x9 Integer -- Int32
SET     @x9 = 3
DECLARE @y14 Integer -- Int32
SET     @y14 = 10
DECLARE @z10 Integer -- Int32
SET     @z10 = 2
DECLARE @x10 Integer -- Int32
SET     @x10 = 3
DECLARE @z11 Integer -- Int32
SET     @z11 = 2

SELECT
	((((@x3 * (@y10 - @z2) / @x4) * @z3) * (((((@x5 * (@y11 - @z4) / @x6) * @z5) * (@y12 - @z6) / ((@x7 * (@y13 - @z7) / @x8) * @z8)) * @z9) - [child_1].[ChildID]) / ((@x9 * (@y14 - @z10) / @x10) * @z11)) * [child_1].[ChildID])
FROM
	[Child] [child_1]

