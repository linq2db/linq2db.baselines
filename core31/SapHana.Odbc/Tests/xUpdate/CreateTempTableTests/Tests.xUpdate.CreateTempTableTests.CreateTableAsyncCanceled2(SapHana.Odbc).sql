BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

