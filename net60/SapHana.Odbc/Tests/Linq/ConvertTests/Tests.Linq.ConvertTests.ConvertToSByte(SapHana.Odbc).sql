BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast(Floor(CASE
				WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND MOD(Floor("t"."MoneyValue"), 2) = 0
					THEN Floor("t"."MoneyValue")
				ELSE Round("t"."MoneyValue", 0)
			END) as TinyInt) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

