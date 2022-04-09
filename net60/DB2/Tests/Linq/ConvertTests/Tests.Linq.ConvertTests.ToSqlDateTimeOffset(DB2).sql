BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	TimeStamp(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-01-01 00:20:00')
FROM
	"LinqDataTypes" "t"

