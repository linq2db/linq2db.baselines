BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Mod(To_Number(To_Char("t"."DateTimeValue", 'HH24')), 7)
FROM
	"LinqDataTypes" "t"

