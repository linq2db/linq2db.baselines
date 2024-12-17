BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Timestamp('2010-' || LPad("t"."ID", 2, '0') || '-01 20:35:44.000')
FROM
	"LinqDataTypes" "t"
WHERE
	Year(To_Timestamp('2010-' || LPad("t"."ID", 2, '0') || '-01 20:35:44.000')) = 2010

