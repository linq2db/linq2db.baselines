BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	CASE
		WHEN CAST("t"."MoneyValue" AS Double) * 2 = ROUND(CAST("t"."MoneyValue" AS Double) * 2, 1) AND CAST("t"."MoneyValue" AS Double) <> ROUND(CAST("t"."MoneyValue" AS Double), 1)
			THEN ROUND(CAST("t"."MoneyValue" AS Double) / 2, 1) * 2
		ELSE ROUND(CAST("t"."MoneyValue" AS Double), 1)
	END <> 0

