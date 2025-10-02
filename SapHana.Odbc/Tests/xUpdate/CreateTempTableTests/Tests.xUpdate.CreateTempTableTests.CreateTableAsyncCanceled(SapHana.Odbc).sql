BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

