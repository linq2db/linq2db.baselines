BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CAST("v"."Integer" AS Double) / 33,
	CAST("v"."Decimal" AS Double) / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
LIMIT 2

