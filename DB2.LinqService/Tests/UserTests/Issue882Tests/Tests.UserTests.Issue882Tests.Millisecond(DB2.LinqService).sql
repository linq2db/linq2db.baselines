BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Mod(To_Number(To_Char("t"."DateTimeValue", 'FF')) / 1000, 7)
FROM
	"LinqDataTypes" "t"

