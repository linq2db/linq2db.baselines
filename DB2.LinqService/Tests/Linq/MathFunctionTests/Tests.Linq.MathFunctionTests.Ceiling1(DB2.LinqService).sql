BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Ceiling(-("p"."MoneyValue" + 1)) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

