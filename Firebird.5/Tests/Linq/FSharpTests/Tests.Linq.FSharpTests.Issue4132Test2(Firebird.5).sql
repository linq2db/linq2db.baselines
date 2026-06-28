-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

UPDATE
	"Issue4132Table" "row_1"
SET
	"Id" = "row_1"."Id",
	"Number" = "row_1"."Number",
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"Issue4132Table" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

