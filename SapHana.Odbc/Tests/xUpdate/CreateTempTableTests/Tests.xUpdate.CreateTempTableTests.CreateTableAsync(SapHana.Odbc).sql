-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
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

SELECT
	"t"."ID"
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t"."ID"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

