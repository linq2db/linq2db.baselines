-- DB2 DB2.LUW DB2LUW
DECLARE @rowCount Integer(4) -- Int32
SET     @rowCount = 9
DECLARE @p Integer(4) -- Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	CAST(COUNT(*) OVER () = CAST(@rowCount AS Int) AND SUM("t"."IntValue") OVER () > 0 AS smallint),
	CAST(COUNT(*) OVER () = CAST(@p AS Int) AND SUM("t"."IntValue") OVER () > 0 AS smallint)
FROM
	"WindowFunctionTestEntity" "t"

