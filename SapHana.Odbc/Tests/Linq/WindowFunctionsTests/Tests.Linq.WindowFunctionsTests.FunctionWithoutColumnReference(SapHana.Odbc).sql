-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	CASE
		WHEN SUM("t"."IntValue") OVER () > 0 THEN 1
		ELSE 0
	END
FROM
	"WindowFunctionTestEntity" "t"

