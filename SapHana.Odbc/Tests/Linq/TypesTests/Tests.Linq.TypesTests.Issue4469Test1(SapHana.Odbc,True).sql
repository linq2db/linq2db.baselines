-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST("v"."Integer" / 33 AS Integer),
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
LIMIT 2

