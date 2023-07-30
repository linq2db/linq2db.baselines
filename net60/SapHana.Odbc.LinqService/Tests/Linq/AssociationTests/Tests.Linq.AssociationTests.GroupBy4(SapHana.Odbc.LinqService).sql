BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Key_1"
FROM
	(
		SELECT
			Year("selectParam"."DateTimeValue") as "Key_1"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

