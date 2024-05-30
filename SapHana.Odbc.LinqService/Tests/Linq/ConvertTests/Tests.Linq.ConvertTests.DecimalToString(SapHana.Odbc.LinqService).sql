BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("p"."MoneyValue" AS NVarChar(31))
FROM
	"LinqDataTypes" "p"
WHERE
	Length(CAST("p"."MoneyValue" AS NVarChar(31))) > 0

