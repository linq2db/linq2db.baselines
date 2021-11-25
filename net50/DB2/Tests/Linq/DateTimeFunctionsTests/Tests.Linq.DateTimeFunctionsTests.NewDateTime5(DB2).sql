BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date(RTrim(Char(To_Number(To_Char("p"."DateTimeValue", 'YYYY')) + 1)) || '-10-1')
FROM
	"LinqDataTypes" "p"
WHERE
	To_Number(To_Char(Date(RTrim(Char(To_Number(To_Char("p"."DateTimeValue", 'YYYY')) + 1)) || '-10-1'), 'MM')) = 10

