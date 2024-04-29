BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			Truncate(CAST(-"t"."MoneyValue" AS Float), 0) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0.10000000000000001

