-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Timestamp(LPad(Year("p"."DateTimeValue"), 4, '0') || '-10-01 00:00:00.000')
FROM
	"LinqDataTypes" "p"

