-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

