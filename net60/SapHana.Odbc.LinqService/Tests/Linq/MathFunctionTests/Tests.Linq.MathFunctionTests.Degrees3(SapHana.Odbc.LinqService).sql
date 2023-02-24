BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(Cast(Floor("p"."MoneyValue") as Integer) as Double) * 57.295779513082323 as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	(Cast("t"."c1" as Double) <> 0.10000000000000001 OR Cast("t"."c1" as Double) IS NULL)

