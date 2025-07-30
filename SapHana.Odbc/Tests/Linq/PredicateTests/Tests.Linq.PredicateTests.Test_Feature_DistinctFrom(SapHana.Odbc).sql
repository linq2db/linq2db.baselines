BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."One"

