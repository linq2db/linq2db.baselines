BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Year("t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"
WHERE
	Month(To_Timestamp(LPad(Year("t"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000')) = 10

