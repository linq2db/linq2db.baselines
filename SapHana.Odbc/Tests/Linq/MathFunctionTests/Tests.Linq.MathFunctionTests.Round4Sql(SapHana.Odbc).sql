BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CASE
		WHEN CAST("t_1"."c1" AS Decimal) * 2 = Round(CAST("t_1"."c1" AS Decimal) * 2, 5) AND CAST("t_1"."c1" AS Decimal) <> Round(CAST("t_1"."c1" AS Decimal), 5)
			THEN Round(CAST("t_1"."c1" AS Decimal) / 2, 5) * 2
		ELSE Round(CAST("t_1"."c1" AS Decimal), 5)
	END AS Double)
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

