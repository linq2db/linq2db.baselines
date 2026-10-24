-- SapHana.Odbc SapHanaOdbc
UPDATE
	"InheritanceFilter" "t1"
SET
	"Child1Field" = 66
WHERE
	"t1"."Id" = 1

-- SapHana.Odbc SapHanaOdbc
INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field"
)
VALUES
(
	1,
	1,
	55
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Child1Field"
FROM
	"InheritanceFilter" "t1"
WHERE
	"t1"."Code" IN (12, 11, 1)
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
UPDATE
	"InheritanceFilter" "t1"
SET
	"Child1Field" = 66
WHERE
	"t1"."Id" = 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Child1Field"
FROM
	"InheritanceFilter" "t1"
WHERE
	"t1"."Code" IN (12, 11, 1)
LIMIT 2

