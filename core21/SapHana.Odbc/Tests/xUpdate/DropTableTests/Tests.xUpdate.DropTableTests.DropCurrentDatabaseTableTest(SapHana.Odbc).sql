BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

