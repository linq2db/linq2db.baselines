BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(('2010-' || Cast("p"."ID" as VarChar(11)) || '-1 20:35:44') as TimeStamp)
FROM
	"LinqDataTypes" "p"
WHERE
	Year(Cast(('2010-' || Cast("p"."ID" as VarChar(11)) || '-1 20:35:44') as TimeStamp)) = 2010

