-- SapHana.Odbc SapHanaOdbc
INSERT INTO "BinaryColumnRecord"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	x'010203',
	x'0405'
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ID",
	"t1"."Array",
	"t1"."Binary"
FROM
	"BinaryColumnRecord" "t1"
WHERE
	"t1"."ID" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ID",
	"t1"."Array",
	"t1"."Binary"
FROM
	"BinaryColumnRecord" "t1"
WHERE
	"t1"."Array" = x'010203'
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ID",
	"t1"."Array",
	"t1"."Binary"
FROM
	"BinaryColumnRecord" "t1"
WHERE
	"t1"."Binary" = x'0405'
LIMIT 2

