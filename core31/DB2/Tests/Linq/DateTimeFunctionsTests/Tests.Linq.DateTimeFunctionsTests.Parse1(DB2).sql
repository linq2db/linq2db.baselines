BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."c1"
FROM
	(
		SELECT
			"t"."DateTimeValue" as "c1"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	To_Number(To_Char("d"."c1", 'DD')) > 0

