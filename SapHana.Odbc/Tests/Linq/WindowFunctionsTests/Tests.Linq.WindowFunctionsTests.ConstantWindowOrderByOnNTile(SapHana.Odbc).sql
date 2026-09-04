-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	NTILE(4) OVER (ORDER BY (
		SELECT
			1
		FROM DUMMY
	))
FROM
	"WindowFunctionTestEntity" "t"

