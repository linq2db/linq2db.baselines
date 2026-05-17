-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Floor(CAST(Power(CAST("p"."MoneyValue" AS Double), CAST(3 AS Double)) AS Decimal(38, 10))) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0

