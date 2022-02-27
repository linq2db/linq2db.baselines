BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Year("t"."DateTimeValue") as NVarChar(100)) || '-01-01 00:00:00') as Timestamp)
FROM
	"LinqDataTypes" "t"
WHERE
	DayOfMonth(Cast((Cast(Year("t"."DateTimeValue") as NVarChar(100)) || '-01-01 00:00:00') as Timestamp)) > 0

