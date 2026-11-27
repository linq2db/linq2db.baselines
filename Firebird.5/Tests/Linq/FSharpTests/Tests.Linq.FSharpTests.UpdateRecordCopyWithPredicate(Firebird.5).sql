-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
UPDATE
	"RecordSetterTable" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- Firebird.5 Firebird4
SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"RecordSetterTable" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

