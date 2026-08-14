-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	CAST(SUM("t"."IntValue") OVER () > 0 AS smallint)
FROM
	"WindowFunctionTestEntity" "t"

