BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @z2 Integer(4) -- Int32
SET     @z2 = 2
DECLARE @y10 Integer(4) -- Int32
SET     @y10 = 10
DECLARE @x3 Integer(4) -- Int32
SET     @x3 = 3

SELECT
	((((@x3::Int * (@y10::Int - @z2::Int) / @x3::Int) * @z2::Int) * (((((@x3::Int * (@y10::Int - @z2::Int) / @x3::Int) * @z2::Int) * (@y10::Int - @z2::Int) / ((@x3::Int * (@y10::Int - @z2::Int) / @x3::Int) * @z2::Int)) * @z2::Int) - child_1.ChildID) / ((@x3::Int * (@y10::Int - @z2::Int) / @x3::Int) * @z2::Int)) * child_1.ChildID)
FROM
	Child child_1

