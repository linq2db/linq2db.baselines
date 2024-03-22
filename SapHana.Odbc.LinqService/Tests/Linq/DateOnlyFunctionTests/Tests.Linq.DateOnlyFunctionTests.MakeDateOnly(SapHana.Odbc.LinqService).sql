BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID"
FROM
	"LinqDataTypes" "t"
WHERE
	Year(Cast(('2010-' || Lpad("t"."ID",2,'0') || '-01') as Date)) = 2010

