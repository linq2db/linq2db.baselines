BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
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

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

