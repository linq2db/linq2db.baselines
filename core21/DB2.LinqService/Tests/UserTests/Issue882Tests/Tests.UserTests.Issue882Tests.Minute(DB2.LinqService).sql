BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Mod(To_Number(To_Char("t"."DateTimeValue", 'MI')), 7)
FROM
	"LinqDataTypes" "t"

