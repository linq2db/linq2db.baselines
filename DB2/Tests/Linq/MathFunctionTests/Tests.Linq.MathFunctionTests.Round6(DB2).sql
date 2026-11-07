-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."c1"
FROM
	(
		SELECT
			sign(CAST("p"."MoneyValue" AS Float)) * CASE
				WHEN abs(CAST("p"."MoneyValue" AS Float)) - floor(abs(CAST("p"."MoneyValue" AS Float))) = 0.5
					THEN floor(abs(CAST("p"."MoneyValue" AS Float))) + 1
				ELSE round(abs(CAST("p"."MoneyValue" AS Float)), 0)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

