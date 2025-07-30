BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", 300))
FROM
	"LinqDataTypes" "t"

