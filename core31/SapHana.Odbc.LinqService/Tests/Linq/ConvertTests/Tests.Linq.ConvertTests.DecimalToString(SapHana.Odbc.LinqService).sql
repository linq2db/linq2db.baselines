BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast("t"."MoneyValue" as NVarChar(31))
FROM
	"LinqDataTypes" "t"
WHERE
	Length(Cast("t"."MoneyValue" as NVarChar(31))) > 0

