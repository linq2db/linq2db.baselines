BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			CAST(CASE
				WHEN "t"."MoneyValue" * 2 = Round("t"."MoneyValue" * 2, 1) AND "t"."MoneyValue" <> Round("t"."MoneyValue", 1)
					THEN Round("t"."MoneyValue" / 2, 1) * 2
				ELSE Round("t"."MoneyValue", 1)
			END AS Double) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

