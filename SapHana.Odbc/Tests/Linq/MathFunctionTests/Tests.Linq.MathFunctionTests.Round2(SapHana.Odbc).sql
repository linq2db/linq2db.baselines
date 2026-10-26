-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST("p"."MoneyValue" AS Double) - FLOOR(CAST("p"."MoneyValue" AS Double)) = 0.5
					THEN ROUND(CAST("p"."MoneyValue" AS Double) * 0.5, 0) * 2
				ELSE ROUND(CAST("p"."MoneyValue" AS Double), 0)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

