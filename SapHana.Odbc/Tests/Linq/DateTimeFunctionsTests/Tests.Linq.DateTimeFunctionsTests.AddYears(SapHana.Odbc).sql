BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Years("t"."DateTimeValue", 1) as Date)
FROM
	"LinqDataTypes" "t"

