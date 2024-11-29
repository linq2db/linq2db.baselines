BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	RTRIM(REPLACE(CAST("p"."MoneyValue" AS NVarChar(31)), ',', '.'), '0.')
FROM
	"LinqDataTypes" "p"
WHERE
	Length(CAST("p"."MoneyValue" AS NVarChar(31))) > 0

