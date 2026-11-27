-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
UPDATE
	"RecordSetterTable" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"RecordSetterTable" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

