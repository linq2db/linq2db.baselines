BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	To_Number(To_Char("t"."DateTimeValue", 'WW'))
FROM
	"LinqDataTypes" "t"

