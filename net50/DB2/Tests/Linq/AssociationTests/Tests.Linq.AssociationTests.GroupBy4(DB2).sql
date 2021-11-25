BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY'))
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY'))

