BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Timestamp(LPad(Year("t"."DateTimeValue"), 4, '0') || '-10-01 00:00:00.000')
FROM
	"LinqDataTypes" "t"

