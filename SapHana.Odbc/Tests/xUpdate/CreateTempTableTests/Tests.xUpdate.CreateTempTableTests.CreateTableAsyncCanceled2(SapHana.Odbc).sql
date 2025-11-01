-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

