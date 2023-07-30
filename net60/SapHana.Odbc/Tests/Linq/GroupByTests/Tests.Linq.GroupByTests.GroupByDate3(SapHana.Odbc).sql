BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Sum("t1"."MoneyValue"),
	Year("t1"."Key_1"),
	Month("t1"."Key_1")
FROM
	(
		SELECT
			Cast((Lpad(Year("selectParam"."DateTimeValue"),4,'0') || '-' || Lpad(Month("selectParam"."DateTimeValue"),2,'0') || '-01') as Date) as "Key_1",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

