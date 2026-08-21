-- Informix.DB2 Informix
DECLARE @rowCount Integer(4) -- Int32
SET     @rowCount = 9
DECLARE @p Integer(4) -- Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	COUNT(*) OVER () = @rowCount::Int AND SUM(t.IntValue) OVER () > 0,
	COUNT(*) OVER () = @p::Int AND SUM(t.IntValue) OVER () > 0
FROM
	WindowFunctionTestEntity t

