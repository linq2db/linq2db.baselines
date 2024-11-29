BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			CAST(CAST("p"."MoneyValue" AS Integer) AS Double) * 57.295779513082323 as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	CAST("t"."Value_1" AS Double) <> 0.10000000000000001

