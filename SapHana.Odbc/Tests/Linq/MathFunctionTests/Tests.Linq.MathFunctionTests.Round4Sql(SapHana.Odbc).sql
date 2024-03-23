BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(CASE
		WHEN Cast("t_1"."c1" as Decimal) * 2 = Round(Cast("t_1"."c1" as Decimal) * 2, 5) AND Cast("t_1"."c1" as Decimal) <> Round(Cast("t_1"."c1" as Decimal), 5)
			THEN Round(Cast("t_1"."c1" as Decimal) / 2, 5) * 2
		ELSE Round(Cast("t_1"."c1" as Decimal), 5)
	END as Double)
FROM
	(
		SELECT
			Cast(CASE
				WHEN "t"."MoneyValue" * 2 = Round("t"."MoneyValue" * 2, 1) AND "t"."MoneyValue" <> Round("t"."MoneyValue", 1)
					THEN Round("t"."MoneyValue" / 2, 1) * 2
				ELSE Round("t"."MoneyValue", 1)
			END as Double) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

