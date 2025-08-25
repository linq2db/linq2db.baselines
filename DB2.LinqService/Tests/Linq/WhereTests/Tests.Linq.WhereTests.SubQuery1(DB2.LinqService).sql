BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			CASE
				WHEN "p"."MoneyValue" * 2 = ROUND("p"."MoneyValue" * 2, 2) AND "p"."MoneyValue" <> ROUND("p"."MoneyValue", 2)
					THEN ROUND("p"."MoneyValue" / 2, 2) * 2
				ELSE ROUND("p"."MoneyValue", 2)
			END as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0 AND "t"."Value_1" <> 7

