BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "IsTemporaryTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsTemporaryTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "IsTemporaryTable"

