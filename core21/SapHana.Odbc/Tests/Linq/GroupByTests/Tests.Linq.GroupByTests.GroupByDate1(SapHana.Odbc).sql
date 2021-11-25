BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Sum("selectParam"."MoneyValue"),
	Year("selectParam"."DateTimeValue"),
	Month("selectParam"."DateTimeValue")
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Month("selectParam"."DateTimeValue"),
	Year("selectParam"."DateTimeValue")

