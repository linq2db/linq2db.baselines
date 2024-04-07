BeforeExecute
-- Access AccessOleDb
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
	((((@x3 * (@y10 - @z2) / @x3_1) * @z2_1) * (((((@x3_2 * (@y10_1 - @z2_2) / @x3_3) * @z2_3) * (@y10_2 - @z2_4) / ((@x3_4 * (@y10_3 - @z2_5) / @x3_5) * @z2_6)) * @z2_7) - [child_1].[ChildID]) / ((@x3_6 * (@y10_4 - @z2_8) / @x3_7) * @z2_9)) * [child_1].[ChildID])
FROM
	[Child] [child_1]

