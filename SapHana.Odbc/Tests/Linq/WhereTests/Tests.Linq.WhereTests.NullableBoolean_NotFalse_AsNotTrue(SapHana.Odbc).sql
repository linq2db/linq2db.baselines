BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Bool"
FROM
	"NullableBool" "r"
WHERE
	"r"."Bool" = 1 OR "r"."Bool" IS NULL

