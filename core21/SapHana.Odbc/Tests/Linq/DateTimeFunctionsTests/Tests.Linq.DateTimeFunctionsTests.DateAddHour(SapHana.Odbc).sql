BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", 3600))
FROM
	"LinqDataTypes" "t"

