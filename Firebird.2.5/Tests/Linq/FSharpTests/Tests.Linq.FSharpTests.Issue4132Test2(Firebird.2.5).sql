-- Firebird.2.5 Firebird

INSERT INTO "Issue4132Table"
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
	"Issue4132Table" "row_1"
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
	"Issue4132Table" "r"
WHERE
	"r"."Id" = 1

