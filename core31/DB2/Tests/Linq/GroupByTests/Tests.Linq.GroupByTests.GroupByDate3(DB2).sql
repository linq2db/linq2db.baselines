BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Sum("t1"."MoneyValue"),
	To_Number(To_Char("t1"."Key_1", 'YYYY')),
	To_Number(To_Char("t1"."Key_1", 'MM'))
FROM
	(
		SELECT
			Date(RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')))) || '-' || RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'MM')))) || '-1') as "Key_1",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

