BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Floor(Atan2(CAST("p"."MoneyValue" AS Double) / 15, 0) * 15) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.10000000000000001

