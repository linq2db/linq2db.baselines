BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-10-1')
FROM
	"LinqDataTypes" "t"
WHERE
	To_Number(To_Char(Date(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-10-1'), 'MM')) = 10

