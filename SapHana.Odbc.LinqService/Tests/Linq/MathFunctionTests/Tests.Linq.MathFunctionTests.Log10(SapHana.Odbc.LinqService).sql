BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			Floor(Log(10,CAST("t"."MoneyValue" AS Double))) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0.10000000000000001

