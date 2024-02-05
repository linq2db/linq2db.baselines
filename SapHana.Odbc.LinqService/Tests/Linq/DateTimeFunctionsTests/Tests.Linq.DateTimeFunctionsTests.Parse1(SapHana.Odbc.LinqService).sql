BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"d"."c1"
FROM
	(
		SELECT
			"t"."DateTimeValue" as "c1"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	DayOfMonth("d"."c1") > 0

