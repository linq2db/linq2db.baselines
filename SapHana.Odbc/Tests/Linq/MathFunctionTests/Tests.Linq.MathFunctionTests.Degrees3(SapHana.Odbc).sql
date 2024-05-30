BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			CAST(CAST("t"."MoneyValue" AS Integer) AS Double) * 57.295779513082323 as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	CAST("t_1"."c1" AS Double) <> 0.10000000000000001

