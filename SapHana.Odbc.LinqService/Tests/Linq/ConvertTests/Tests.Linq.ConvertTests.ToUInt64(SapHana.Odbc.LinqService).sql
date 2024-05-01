BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p_1"."c1"
FROM
	(
		SELECT
			CAST("p"."MoneyValue" AS Decimal) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" > 0

