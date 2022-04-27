BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(('2010-' || Lpad("p"."ID",2,'0') || '-01') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

