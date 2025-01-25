BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			LEAST("t"."MoneyValue", 5) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

