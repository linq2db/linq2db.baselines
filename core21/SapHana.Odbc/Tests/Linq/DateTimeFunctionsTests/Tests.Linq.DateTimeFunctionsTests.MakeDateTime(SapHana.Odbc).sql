BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(('2010-' || Cast("p"."ID" as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" "p"
WHERE
	Year(Cast(('2010-' || Cast("p"."ID" as VarChar(11)) || '-1') as Date)) = 2010

