-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST("p"."MoneyValue" AS Double) * 2 = ROUND(CAST("p"."MoneyValue" AS Double) * 2, 1) AND CAST("p"."MoneyValue" AS Double) <> ROUND(CAST("p"."MoneyValue" AS Double), 1)
					THEN ROUND(CAST("p"."MoneyValue" AS Double) / 2, 1) * 2
				ELSE ROUND(CAST("p"."MoneyValue" AS Double), 1)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

