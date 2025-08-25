BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Floor(Decimal(Power(CAST("p"."MoneyValue" AS Float), CAST(3 AS Float)), 18, 10)) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0

