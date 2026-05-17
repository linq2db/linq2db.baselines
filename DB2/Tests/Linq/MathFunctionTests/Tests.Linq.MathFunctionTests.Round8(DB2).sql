-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST("p"."MoneyValue" AS Float) - FLOOR(CAST("p"."MoneyValue" AS Float)) = 0.5 AND Mod(Int(FLOOR(CAST("p"."MoneyValue" AS Float))), 2) = 0
					THEN FLOOR(CAST("p"."MoneyValue" AS Float))
				ELSE ROUND(CAST("p"."MoneyValue" AS Float), 0)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

