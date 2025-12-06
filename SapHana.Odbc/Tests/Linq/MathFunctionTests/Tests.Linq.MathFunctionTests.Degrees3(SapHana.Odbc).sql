-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CAST("t"."MoneyValue" AS Integer) AS Double) * 57.295779513082323
FROM
	"LinqDataTypes" "t"
WHERE
	CAST(CAST(CAST("t"."MoneyValue" AS Integer) AS Double) * 57.295779513082323 AS Double) <> 0.10000000000000001

