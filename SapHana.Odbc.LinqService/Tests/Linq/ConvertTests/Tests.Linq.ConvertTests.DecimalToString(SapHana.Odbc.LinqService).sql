BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	Length(Cast("p"."MoneyValue" as NVarChar(255))) > 0

