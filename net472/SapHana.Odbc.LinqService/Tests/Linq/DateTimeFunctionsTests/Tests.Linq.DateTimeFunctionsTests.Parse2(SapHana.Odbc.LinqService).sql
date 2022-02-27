BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"d"."c1"
FROM
	(
		SELECT
			Cast((Cast(Year("t"."DateTimeValue") as VarChar(11)) || '-02-24 00:00:00') as Timestamp) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	DayOfMonth("d"."c1") > 0

