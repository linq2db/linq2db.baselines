BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	TimeStamp(RTrim(Char(To_Number(To_Char("p"."DateTimeValue", 'YYYY')))) || '-10-1 20:35:44')
FROM
	"LinqDataTypes" "p"
WHERE
	To_Number(To_Char(TimeStamp(RTrim(Char(To_Number(To_Char("p"."DateTimeValue", 'YYYY')))) || '-10-1 20:35:44'), 'MM')) = 10

