BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("v"."Integer" AS Decimal(38, 10)) / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
LIMIT 2

