BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Years("t"."DateTimeValue", 11) as Date)
FROM
	"LinqDataTypes" "t"

