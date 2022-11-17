BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Sum("t1"."MoneyValue"),
	To_Number(To_Char("t1"."Key_1", 'YYYY')),
	To_Number(To_Char("t1"."Key_1", 'MM'))
FROM
	(
		SELECT
			Date(Lpad(To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')),4,'0') || '-' || Lpad(To_Number(To_Char("selectParam"."DateTimeValue", 'MM')),2,'0') || '-01') as "Key_1",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

