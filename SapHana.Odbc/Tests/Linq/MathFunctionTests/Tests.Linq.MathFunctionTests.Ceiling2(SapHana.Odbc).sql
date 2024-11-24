BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Ceil("p"."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

