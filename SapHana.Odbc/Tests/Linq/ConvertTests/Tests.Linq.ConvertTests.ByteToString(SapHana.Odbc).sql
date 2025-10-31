-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ID"
FROM
	"LinqDataTypes" "p"
WHERE
	Length(CAST(CAST("p"."ID" AS TinyInt) AS NVarChar(3))) > 0

