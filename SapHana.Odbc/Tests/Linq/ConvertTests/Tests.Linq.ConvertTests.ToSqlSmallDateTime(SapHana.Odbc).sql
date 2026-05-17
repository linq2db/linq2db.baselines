-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CAST(Year("t"."DateTimeValue") AS NVarChar(11)) || '-01-01 00:20:00' AS SecondDate)
FROM
	"LinqDataTypes" "t"

