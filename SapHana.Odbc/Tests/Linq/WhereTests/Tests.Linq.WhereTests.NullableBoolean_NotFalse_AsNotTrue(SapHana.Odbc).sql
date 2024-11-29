BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NullableBool"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NullableBool"
(
	"ID"   Integer NOT NULL,
	"Bool" TinyInt     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Bool"
FROM
	"NullableBool" "r"
WHERE
	"r"."Bool" = 1 OR "r"."Bool" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NullableBool"

