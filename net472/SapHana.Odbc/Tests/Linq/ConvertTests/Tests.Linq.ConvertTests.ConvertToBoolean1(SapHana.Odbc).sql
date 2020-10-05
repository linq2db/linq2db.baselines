BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "t"."MoneyValue" = 0 THEN 0
				ELSE 1
			END as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	("p"."c1" = 1 AND "p"."c1" IS NOT NULL)

