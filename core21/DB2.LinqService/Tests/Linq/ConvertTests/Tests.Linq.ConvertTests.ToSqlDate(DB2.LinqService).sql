BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Date(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-01-01')
FROM
	"LinqDataTypes" "t"

