-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Truncate(CAST(-"p"."MoneyValue" AS Float), 0) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.10000000000000001

