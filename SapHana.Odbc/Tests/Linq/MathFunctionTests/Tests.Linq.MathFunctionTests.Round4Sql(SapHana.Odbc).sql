BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN "t_1"."c1" * 2 = ROUND("t_1"."c1" * 2, 5) AND "t_1"."c1" <> ROUND("t_1"."c1", 5)
			THEN ROUND("t_1"."c1" / 2, 5) * 2
		ELSE ROUND("t_1"."c1", 5)
	END
FROM
	(
		SELECT
			CASE
				WHEN CAST("t"."MoneyValue" AS Double) * 2 = ROUND(CAST("t"."MoneyValue" AS Double) * 2, 1) AND CAST("t"."MoneyValue" AS Double) <> ROUND(CAST("t"."MoneyValue" AS Double), 1)
					THEN ROUND(CAST("t"."MoneyValue" AS Double) / 2, 1) * 2
				ELSE ROUND(CAST("t"."MoneyValue" AS Double), 1)
			END as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

