BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."c1"
FROM
	(
		SELECT
			TimeStamp(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-02-24 00:00:00') as "c1"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	To_Number(To_Char("d"."c1", 'DD')) > 0

