-- Informix.DB2 Informix
DECLARE @z2 Integer(4) -- Int32
SET     @z2 = 2
DECLARE @y10 Integer(4) -- Int32
SET     @y10 = 10
DECLARE @z2_1 Integer(4) -- Int32
SET     @z2_1 = 2
DECLARE @y10_1 Integer(4) -- Int32
SET     @y10_1 = 10
DECLARE @x3 Integer(4) -- Int32
SET     @x3 = 3
DECLARE @z2_2 Integer(4) -- Int32
SET     @z2_2 = 2
DECLARE @y10_2 Integer(4) -- Int32
SET     @y10_2 = 10
DECLARE @x3_1 Integer(4) -- Int32
SET     @x3_1 = 3

SELECT
	((((@x3_1::Int * (@y10_2::Int - @z2_2::Int) / @x3_1::Int) * @z2_2::Int) * (((((@x3::Int * (@y10_1::Int - @z2_1::Int) / @x3::Int) * @z2_1::Int) * (@y10::Int - @z2::Int) / ((@x3::Int * (@y10_1::Int - @z2_1::Int) / @x3::Int) * @z2_1::Int)) * @z2::Int) - child_1.ChildID) / ((@x3_1::Int * (@y10_2::Int - @z2_2::Int) / @x3_1::Int) * @z2_2::Int)) * child_1.ChildID)
FROM
	Child child_1

