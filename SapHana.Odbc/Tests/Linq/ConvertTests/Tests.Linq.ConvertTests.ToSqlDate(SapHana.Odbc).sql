-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CAST(Year("t"."DateTimeValue") AS NVarChar(11)) || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

