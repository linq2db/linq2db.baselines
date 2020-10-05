BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast(Floor("t"."MoneyValue") as TinyInt) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

