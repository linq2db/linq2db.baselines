BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."c1"
FROM
	(
		SELECT
			RTrim(Char(SmallInt("t".ID))) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	CHARACTER_LENGTH("p"."c1",CODEUNITS32) > 0

