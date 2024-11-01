BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Round(CAST(-"p"."MoneyValue" AS Double), 0, ROUND_DOWN) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.10000000000000001

