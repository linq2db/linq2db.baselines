BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("p_1"."c1" AS Integer)
FROM
	(
		SELECT
			CAST("p"."MoneyValue" AS Real) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" > 0

