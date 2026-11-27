-- SapHana.Odbc SapHanaOdbc
INSERT INTO "RecordSetterTable"
(
	"Id",
	"Number",
	"Text"
)
VALUES
(
	1,
	1,
	'before'
)

-- SapHana.Odbc SapHanaOdbc
UPDATE
	"RecordSetterTable" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"RecordSetterTable" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

