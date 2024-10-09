BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			To_Timestamp('2010-' || LPad("t"."ID", 2, '0') || '-01 20:35:44.000') as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	Year("t_1"."c1") = 2010

