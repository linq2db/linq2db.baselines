BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

