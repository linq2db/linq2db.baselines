-- SapHana.Odbc SapHanaOdbc
INSERT INTO "CalculatedColumnSetTable"
(
	"Id",
	"FirstName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	Coalesce("r"."FirstName", '') || ' ' || Coalesce("r"."LastName", '')
FROM
	"CalculatedColumnSetTable" "r"
UNION ALL
SELECT
	"r_1"."Id" + 1,
	"r_1"."Text"
FROM
	"CalculatedColumnSetTable" "r_1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id" + 1,
	"r"."Text"
FROM
	"CalculatedColumnSetTable" "r"
UNION ALL
SELECT
	"r_1"."Id",
	Coalesce("r_1"."FirstName", '') || ' ' || Coalesce("r_1"."LastName", '')
FROM
	"CalculatedColumnSetTable" "r_1"

