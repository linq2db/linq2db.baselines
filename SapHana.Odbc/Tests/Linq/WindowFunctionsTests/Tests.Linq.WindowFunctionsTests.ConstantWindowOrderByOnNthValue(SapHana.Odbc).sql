-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	NTH_VALUE("t"."IntValue", 2) OVER (ORDER BY (
		SELECT
			1
FROM DUMMY
	))
FROM
	"WindowFunctionTestEntity" "t"

