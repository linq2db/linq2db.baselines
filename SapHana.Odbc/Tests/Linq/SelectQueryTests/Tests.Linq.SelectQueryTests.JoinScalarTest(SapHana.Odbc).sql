-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	"t"."Value",
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "c1"
FROM DUMMY
		) "s" ON 1 = "t"."Id"

