-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Timestamp(LPad(Year("p"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000')
FROM
	"LinqDataTypes" "p"

