BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Sum("t1"."MoneyValue"),
	Year("t1"."Key_1"),
	Month("t1"."Key_1")
FROM
	(
		SELECT
			Cast((Cast(Year("selectParam"."DateTimeValue") as NVarChar(100)) || '-' || Cast(Month("selectParam"."DateTimeValue") as NVarChar(100)) || '-1') as Date) as "Key_1",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

