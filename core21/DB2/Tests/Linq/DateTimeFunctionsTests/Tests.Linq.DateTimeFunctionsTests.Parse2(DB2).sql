BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	TimeStamp(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-02-24 00:00:00')
FROM
	"LinqDataTypes" "t"
WHERE
	To_Number(To_Char(TimeStamp(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-02-24 00:00:00'), 'DD')) > 0

