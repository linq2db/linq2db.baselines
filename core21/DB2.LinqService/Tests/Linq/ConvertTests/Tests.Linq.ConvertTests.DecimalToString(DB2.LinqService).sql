BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Strip(RTrim(Char("t"."MoneyValue")), L, '0') as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	CHARACTER_LENGTH("p"."c1",CODEUNITS32) > 0

