-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST("r"."A" + "r"."B" AS Decimal(38, 10))
FROM
	"DecimalTable" "r"
LIMIT 2

