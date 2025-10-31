-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'value'
)

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TempTable"
(
	"Id"      Integer       NOT NULL,
	"Renamed" NVarChar(255)     NULL
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
VALUES
(
	2,
	'renamed 2'
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Renamed"
FROM
	"TempTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

