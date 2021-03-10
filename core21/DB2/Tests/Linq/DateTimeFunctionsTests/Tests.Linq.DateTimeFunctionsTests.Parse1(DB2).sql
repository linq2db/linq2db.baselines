BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	To_Number(To_Char("t"."DateTimeValue", 'DD')) > 0

