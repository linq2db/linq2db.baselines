BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Year("t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"
WHERE
	Month(To_Timestamp(LPad(Year("t"."DateTimeValue") + 1, 4, '0') || '-10-01 00:00:00.000')) = 10

