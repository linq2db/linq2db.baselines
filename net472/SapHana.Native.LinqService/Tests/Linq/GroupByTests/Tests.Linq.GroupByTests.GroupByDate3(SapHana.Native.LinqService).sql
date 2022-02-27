BeforeExecute
-- SapHana.Native SapHana

SELECT
	Sum("t1"."MoneyValue"),
	Year("t1"."c1"),
	Month("t1"."c1")
FROM
	(
		SELECT
			Cast((Cast(Year("selectParam"."DateTimeValue") as VarChar(11)) || '-' || Cast(Month("selectParam"."DateTimeValue") as VarChar(11)) || '-1') as Date) as "c1",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1"

