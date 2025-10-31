-- SapHana.Odbc SapHanaOdbc

DELETE FROM "test_temp"

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	"t1"."ID",
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1"."ID"
LIMIT 2 OFFSET ?

-- SapHana.Odbc SapHanaOdbc

DELETE FROM "test_temp"

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	"t1"."ID",
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1"."ID"
LIMIT 2 OFFSET ?

