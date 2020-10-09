BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Sum("t1"."MoneyValue"), 
	"t1"."c2", 
	"t1"."c1"
FROM
	( 
		SELECT 
			To_Number(To_Char("selectParam"."DateTimeValue", 'MM')) as "c1", 
			To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')) as "c2", 
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1",
	"t1"."c2"

