-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CAST(Hour("t"."DateTimeValue") AS NVarChar(11)) || ':01:01' AS Time)
FROM
	"LinqDataTypes" "t"

