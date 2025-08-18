BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CAST(CASE
				WHEN "t"."MoneyValue" - FLOOR("t"."MoneyValue") = 0.5 AND MOD(FLOOR("t"."MoneyValue"), 2) = 0
					THEN FLOOR("t"."MoneyValue")
				ELSE ROUND("t"."MoneyValue", 0)
			END AS BigInt) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

