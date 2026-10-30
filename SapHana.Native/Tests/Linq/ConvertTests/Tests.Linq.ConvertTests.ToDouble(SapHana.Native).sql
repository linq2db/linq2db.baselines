-- SapHana.Native SapHana
SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(CAST("p"."MoneyValue" AS Double) AS Integer) > 0

