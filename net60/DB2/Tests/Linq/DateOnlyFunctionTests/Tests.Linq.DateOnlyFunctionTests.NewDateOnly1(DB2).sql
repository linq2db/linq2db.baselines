BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Date(RTrim(Char(To_Number(To_Char("p"."DateTimeValue", 'YYYY')))) || '-10-1') as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	To_Number(To_Char("t"."c1", 'MM')) = 10

