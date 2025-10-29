-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "IsTemporaryTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsTemporaryTable" "t1"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "IsTemporaryTable"

