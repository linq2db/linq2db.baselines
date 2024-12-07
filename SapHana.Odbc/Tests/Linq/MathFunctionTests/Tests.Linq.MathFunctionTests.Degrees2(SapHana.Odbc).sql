BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor("t".*)
FROM
	"LinqDataTypes" "t"
WHERE
	CAST("t"."MoneyValue" AS Double) * 57.295779513082323 <> 0.10000000000000001

