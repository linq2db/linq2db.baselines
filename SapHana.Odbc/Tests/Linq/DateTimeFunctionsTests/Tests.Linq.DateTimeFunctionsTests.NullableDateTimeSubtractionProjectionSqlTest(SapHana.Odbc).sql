-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("t"."StartedOn", "t"."FinishedOn")
FROM
	"NullableDateTimeSub" "t"
ORDER BY
	"t"."Id"

