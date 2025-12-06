-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Timestamp('2010-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000')
FROM
	"LinqDataTypes" "t"
WHERE
	Year(To_Timestamp('2010-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000')) = 2010

