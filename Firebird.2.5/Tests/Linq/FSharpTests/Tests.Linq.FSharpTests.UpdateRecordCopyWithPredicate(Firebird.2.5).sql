-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
UPDATE
	"RecordSetterTable" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"RecordSetterTable" "r"
WHERE
	"r"."Id" = 1

