BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Time(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'HH24')))) || ':01:01')
FROM
	"LinqDataTypes" "t"

