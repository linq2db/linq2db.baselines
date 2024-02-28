BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID"
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

