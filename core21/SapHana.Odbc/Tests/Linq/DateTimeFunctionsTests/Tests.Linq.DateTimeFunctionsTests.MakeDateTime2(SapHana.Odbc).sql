BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(('2010-' || Cast("p"."ID" as NVarChar(4000)) || '-1 20:35:44') as TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

