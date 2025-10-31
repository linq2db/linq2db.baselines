BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "p"."MoneyValue" * 2 = ROUND("p"."MoneyValue" * 2, 1) AND "p"."MoneyValue" <> ROUND("p"."MoneyValue", 1)
					THEN ROUND("p"."MoneyValue" / 2, 1) * 2
				ELSE ROUND("p"."MoneyValue", 1)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0 AND "t"."c1" <> 7

